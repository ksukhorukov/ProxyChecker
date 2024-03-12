#!/usr/bin/env ruby

require 'pry'
require 'pp'

PROXY_FILE = 'raw.txt'

def parse_list(file_name = PROXY_FILE)
  File.readlines(File.absolute_path(file_name)).map { |str| str.strip.split(' ')[0] }.map { |e| e if e.match(/[0-9\.]+\:\d+/) }.compact!.each { |s| puts s }
end

parse_list
