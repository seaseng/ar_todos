require_relative '../models/task.rb'
# require_relative '../views/view_task.rb'

class TasksController

  def self.proccess_command(command, option = nil)
    option.nil? ? self.send(command) : self.send(command, option)
    # if option.nil?
      # self.send(command)
    # else/
      # self.send(command, option)
    # end
  end

  def self.list
    Task.list
  end

  def self.delete(id)
    Task.delete(id)
  end

  def self.add(text)
    Task.add(text)
  end

  def self.complete(id)
    Task.complete(id)
  end
end
