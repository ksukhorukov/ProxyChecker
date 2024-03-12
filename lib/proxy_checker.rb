require 'pry'
require_relative './verbose_messages'

class ProxyChecker 
  include VerboseMessages

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

  def raw_content
    @raw_content ||= File.readlines(data_file_path)
  end

  def data_file_path 
    @data_file_path ||= File.absolute_path(file_name)
  end

  def connectivity_check_filter
    @checked = []
    @failed = 0
    parse_list.each do |socket_address|
      @socket_address = socket_address 
      begin 
        host, port = socket_address.split(':')
        TCPSocket.new(host, port, connect_timeout: 5)
      rescue StandardError
        time_out_error_info
        @failed += 1
      else 
        @checked << socket_address
      end
    end
    @counter = @checked.size 
    @checked
  end

  def checked_list
    puts "\n" + @checked.join("\n") + "\n\n"
  end 
end


