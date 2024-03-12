module RawDataReading
  private 

  def raw_content
    @raw_content ||= File.readlines(data_file_path)
  end

  def data_file_path 
    @data_file_path ||= File.absolute_path(file_name)
  end

  def parse_list
    starting_parsing_info  
    filtered_sockets
  end

  def filtered_sockets
    @filtered_sockets ||= fetch_sockets.map { |e| e if e.match(/[0-9\.]+\:\d+/) }.compact!.each { |s| s }
  end

  def fetch_sockets
    @fetch_sockets ||= raw_content.map { |str| str.strip.split(' ')[0] }
  end

  def checked_list
    puts "\n" + @checked.join("\n") + "\n\n"
  end 
end