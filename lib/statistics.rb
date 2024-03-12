module Statistics
  def stats
    puts "\n[+] Done! #{@failed} failed. #{@counter} working.\n".colorize(:green)
  end
end 