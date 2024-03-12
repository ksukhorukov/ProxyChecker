require_relative './connectivity_checker'
require_relative './checked_proxy_list'
require_relative './verbose_messages'
require_relative './raw_data_reading'
require_relative './statistics'
require_relative './constants'


module Engine
  include Constants
  include Statistics
  include RawDataReading
  include VerboseMessages
  include CheckedProxyList
  include ConnectivityChecker
  
  private 

  def perform
    info_checking_proxies_list
    connectivity_check_filter
    checked_list
    stats
  end
end