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

module ConnectivityChecker
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
end