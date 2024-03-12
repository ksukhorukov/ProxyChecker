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