require_relative './verbose_messages'
require_relative './raw_data_reading'
require_relative './connectivity_checker'
require_relative './statistics'
require_relative './constants'


module Engine
  include Constants
  include Statistics
  include RawDataReading
  include VerboseMessages
  include ConnectivityChecker
  
  private 

  def perform
    info_checking_proxies_list
    connectivity_check_filter
    stats
    checked_list
  end

  def checked_list
    puts "\n" + @checked.join("\n") + "\n\n"
  end 
end