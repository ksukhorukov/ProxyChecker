#!/usr/bin/env ruby

require 'socket'
require 'pry'
require 'pp'

PROXY_FILE = 'raw.txt'

def parse_list(file_name = PROXY_FILE)
  puts "[+] Parsing raw data"
  File.readlines(File.absolute_path(file_name)).map { |str| str.strip.split(' ')[0] }.map { |e| e if e.match(/[0-9\.]+\:\d+/) }.compact!.each { |s| s }
end

def connectivity_check_filter
  @checked = []
  @failed = 0
  parse_list.each do |socket_address| 
    begin 
      host, port = socket_address.split(':')
      TCPSocket.new(host, port, connect_timeout: 5)
    rescue StandardError
      puts "  [~] Time Out Error: #{socket_address}"
      @failed += 1
    else 
      @checked << socket_address
    end
  end
  @counter = @checked.size 
  @checked
end

def checked
  puts "\n" + @checked.join("\n") + "\n\n"
end 

def stats
  puts "\n[+] Done! #{@failed} failed. #{@counter} working.\n"
end

puts "\n[+] Checking proxies list"

connectivity_check_filter
stats
checked


