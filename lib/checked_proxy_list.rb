module CheckedProxyList
  private 

  def checked_list
    puts concat_checked_list
  end

  def concat_checked_list 
    "\n" +  @checked.join("\n")
  end
end