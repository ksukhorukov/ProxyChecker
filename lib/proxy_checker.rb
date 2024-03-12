require 'pry'
require_relative './verbose_messages'

class ProxyChecker 
  PROXY_FILE = 'raw.txt'

  def initialize 
    perform
  end

  def perform
    info_checking_proxies_list
    connectivity_check_filter
    stats
    checked_list
  end

  private

  def parse_list(file_name = PROXY_FILE)
    starting_parsing_info
    File.readlines(File.absolute_path(file_name)).map { |str| str.strip.split(' ')[0] }.map { |e| e if e.match(/[0-9\.]+\:\d+/) }.compact!.each { |s| s }
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
    binding.pry
    puts "\n" + @checked.join("\n") + "\n\n".colorize(:red).on_blue.underline
  end 

  def stats
    puts "\n[+] Done! #{@failed} failed. #{@counter} working.\n".colorize(:green)
  end
end


