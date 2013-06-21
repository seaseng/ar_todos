require_relative '../../config/application.rb'
class Task < ActiveRecord::Base

  def self.list
    Task.all
  end

  def self.complete(id)
    Task.find(id).update_attributes(complete: true)

  end

  def self.add(task)
    Task.create!(content: task)  
  end

end
