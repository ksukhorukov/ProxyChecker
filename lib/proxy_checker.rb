require_relative './engine'


class ProxyChecker 
  include Engine

  attr_reader :file_name

  def initialize(file_name = PROXY_FILE)
    @file_name = file_name
    perform
  end
end


