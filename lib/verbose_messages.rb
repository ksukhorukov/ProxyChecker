# frozen_string_literal: true

require 'colorize'

module VerboseMessages
  private

  def info_checking_proxies_list
    puts "\n[+] Checking proxies list".colorize(:green)
  end 

  def time_out_error_info
    puts "\t[~] Time Out Error. #{@socket_address}".colorize(:blue)
  end

  def starting_parsing_info
    puts "[+] Parsing raw data...\n".colorize(:green)
  end
end