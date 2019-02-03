#!/usr/bin/env python

import json, urllib, os, sys, ssl
from pprint import pprint
from optparse import OptionParser

#####################################################################

def create_url(options):
  url="https://api.github.com/"

  if options.org:
    # https://developer.github.com/v3/repos/#list-organization-repositories
    url += "orgs/" + options.org + "/repos?type="
  elif options.user:
    # https://developer.github.com/v3/repos/#list-user-repositories
    url += "users/" + options.user + "/repos?type="
  else:
    # https://developer.github.com/v3/repos/#list-your-repositories
    url += "user/repos?sort=created&type="

  if options.type:
    url += options.type
  else:
    url += "all"

  if options.access_token:
    url += "&access_token=" + options.access_token

  url += "&per_page=100&page="

  return url

#####################################################################

def call_api(options, url, page):

  if options.verbose:
    print('Calling API URL: ', url)
  data = json.load(urllib.urlopen('{}{}'.format(url,page)))
  if options.verbose:
    pprint(data)

  return data

#####################################################################

def main():

  parser = OptionParser()
  parser.add_option("-o", "--org", dest="org", help="Github.com organization name. Assumes Oauth user if omitted.")
  parser.add_option("-u", "--user", dest="user", help="Github.com user name. Assumes Oauth user if omitted.")
  parser.add_option("-a", "--a", dest="access_token", help="OAuth Access Token.")
  parser.add_option("-d", "--depth", dest="depth", help="Git clone depth.")
  parser.add_option("-t", "--type", dest="type",  help="Type of repos to return. Org: all, public, private, forks, sources, member. User: all, owner, member. With Token: all, owner, public, private, member. Default is all.")
  parser.add_option("-r", "--run", action="store_true", dest="run", default=False,  help="Execute changes. Default is Dry Run.")
  parser.add_option("-v", "--verbose", action="store_true", dest="verbose", default=False,  help="Verbose logging - includes URL calls and API JSON responses.")
  (options, args) = parser.parse_args()


  url = create_url(options)

  try:
    page = 1
    data = call_api(options, url, page)

    while len(data) > 0:
      print ''
      print 'Page: {} Count: {}'.format(page, len(data))
      print ''
      for o in data:
        cmd = 'git clone'
        if options.depth:
          cmd = '{} --depth {}'.format(cmd, options.depth)
        cmd = '{} {}'.format(cmd, o['clone_url'])

        if options.run == False:
          print cmd
        else:
          os.system(cmd)

      page += 1
      data = call_api(options, url, page)
  except Exception as e:
    print e

#####################################################################

if __name__ == "__main__":
  try:
    main ()
  except KeyboardInterrupt:
    print 'Execution aborted.'
