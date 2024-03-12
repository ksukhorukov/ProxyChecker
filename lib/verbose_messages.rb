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