require 'pry'
require_relative './verbose_messages'
require_relative './raw_data_reading'
require_relative './connectivity_checker'

class ProxyChecker 
  include VerboseMessages
  include RawDataReading
  include ConnectivityChecker

  PROXY_FILE = 'raw.txt'

  attr_reader :file_name

  def initialize(file_name = PROXY_FILE)
    @file_name = file_name
    perform
  end

  def perform
    info_checking_proxies_list
    connectivity_check_filter
    stats
    checked_list
  end

  private

  def parse_list
    starting_parsing_info  
    filtered_sockets
  end

  def filtered_sockets
    @filtered_sockets ||= fetch_sockets.map { |e| e if e.match(/[0-9\.]+\:\d+/) }.compact!.each { |s| s }
  end

  def fetch_sockets
    @fetch_sockets ||= raw_content.map { |str| str.strip.split(' ')[0] }
  end

  def checked_list
    puts "\n" + @checked.join("\n") + "\n\n"
  end 
end


