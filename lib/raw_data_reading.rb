module RawDataReading
  private 

  def raw_content
    @raw_content ||= File.readlines(data_file_path)
  end

  def data_file_path 
    @data_file_path ||= File.absolute_path(file_name)
  end
end