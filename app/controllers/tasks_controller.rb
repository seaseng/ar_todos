require_relative '../models/task.rb'
require_relative '../views/todo_view.rb'

class TasksController
  include View

  def self.process_command(command, option = nil)
    option.nil? ? self.send(command) : self.send(command, option)
  end

  def self.list
    Task.list.each_with_index do |task, index|
      View.display_text(index, task.content, task.complete, task.id)
    end

  end

  def self.delete(id)
    Task.delete(id)
    View.delete(id)
  end

  def self.add(text)
    Task.add(text)
    View.add(text)
  end

  def self.complete(id)
    Task.complete(id)
    View.complete(id)
  end
end
