module View

  def self.display_text(index, content, complete, id)
      completed = complete ? "[X]" : "[ ]"
      puts "#{index + 1}. #{completed} #{content}" + " Task ID: #{id}"
  end

  def self.add(item)
    puts "Appended \"#{item}\" to your TODO list."
  end

  def self.delete(item)
    puts "Deleted \"#{item}\" from your TODO list."
  
  end

  def self.complete(item)
    puts "Completed \"#{item}\" from your TODO list."    
  end

end




