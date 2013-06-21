require_relative 'config/application'
require_relative 'app/controllers/tasks_controller.rb'

# puts "Put your application code in #{File.expand_path(__FILE__)}"


command = ARGV[0]
option = ARGV[1] if ARGV[1]

TasksController.process_command(command, option)

  
