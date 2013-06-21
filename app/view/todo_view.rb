

module View

  def self.print_list(list)

    list.each_with_index do |task, index|
      completed = task.complete ? "[X]" : "[ ]"
      puts "#{index + 1}. #{completed} #{task.content}" + " Task ID: #{task.id}"
    end
  end

  def self.add(item)
    puts "Appended \"#{item}\" to your TODO list."
  end

  def self.delete(item)
    puts "Deleted \"#{item}\" from your TODO list."
  
  end

  def self.completed_item(item)
    puts "Completed \"#{item}\" from your TODO list."    
  end

end



def parse_argv

  command = ARGV[0]
  option = ARGV[1] if ARGV[1]

  TasksController.process_command(command, option)

  
end
