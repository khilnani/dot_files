#!/usr/bin/ruby

target = '~/bin'
expTarget = File.expand_path(target)

unless File.exists? expTarget
  puts "#{expTarget} not found. Creating."
  system "mkdir #{expTarget}"
end

if File.exists? expTarget
  puts "Copying files to #{expTarget}"
  system "cp -f * #{expTarget}"
  system "rm #{expTarget}/install.rb"
end

puts "Done."
