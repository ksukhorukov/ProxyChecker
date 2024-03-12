require_relative './engine'

module ProxyChecker 
  def self.included(base) 
    include Engine

    attr_reader :file_name
    
    @file_name = PROXY_FILE
    
    perform
  end
end


