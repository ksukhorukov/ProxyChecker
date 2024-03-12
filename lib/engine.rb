# Copyright 2024 KIRILL SUKHORUKOV

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License V.3
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

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