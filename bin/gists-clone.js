#!/usr/bin/env node

// Install Node: curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
// Run: source ~/bashrc
// Run: nvm install v8.10
// Run gists-clone.sh USER TOKEN
// Based on https://gist.github.com/mbostock/3883098
// Updated to use ES6 String templates and add loggin

var fs = require("fs"),
    path = require("path"),
    https = require("https"),
    exec = require("child_process").exec;


if(process.argv.length < 4) {
  var filename = path.basename(process.argv[1]);
  console.log('');
  console.log(`USAGE: ${filename} USER TOKEN`);
  console.log('');
  process.exit(1);
}

var user = process.argv[2];
var token = process.argv[3];
var count = 0;

fetchAndClone(1, function callback(error, nextPage) {
  if (error) return console.error(error);
  if (nextPage > 0) fetchAndClone(nextPage, callback);
});

function fetchAndClone(page, callback) {
  fetch(page, function(error, gists) {
    if (error) return callback(error);

    if (gists.length) {
      ++page;
    } else {
      page = -1;
      console.log("Done.");
    }

    cloneNext(gists.pop());

    function cloneNext(gist) {
      ++count;
      if (!gist) return callback(null, page);
      if (directoryExists(gist.id))
      {
        console.log(`${count} : Exists: ${gist.id}`);
        return cloneNext(gists.pop());
      }
      console.log(`${count}: Cloning: ${gist.id}`);
      exec(`git clone git@gist.github.com:${gist.id}.git`, function(error, stdout, stderr) {
        if (error) return callback(error);
        cloneNext(gists.pop());
      });
    }
  });
}

function fetch(page, callback) {
  console.log(`Fetching page: ${page}`)
  https.get({
    host: "api.github.com",
    path: "/users/" + encodeURIComponent(user) + "/gists?page=" + page,
    headers: {
      "User-Agent": "node",
      "Accept": "application/vnd.github.v3+json",
      "Authorization": "token " + token
    }
  }, function(response) {
    var body = [];
    response
        .on("data", function(data) { body.push(data); })
        .on("end", function() { callback(null, JSON.parse(body.join(""))); })
        .setEncoding("utf8");
  }).on("error", function(error) {
    callback(error, null);
  });
}

function directoryExists(path) {
  try {
    return fs.lstatSync(path).isDirectory();
  } catch (ignored) {
    return false;
  }
}
    
    
