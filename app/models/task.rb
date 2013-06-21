require_relative '../../config/application.rb'
class Task < ActiveRecord::Base

def self.list
  Task.all
end

def self.complete(id)
  Task.find(id).complete = true
end

def self.add(task)
  Task.create!(content: task)  
end
 # this is a comment

end
