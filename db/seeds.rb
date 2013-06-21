require 'faker'


5.times do 
  Task.create(content: Faker::Lorem.sentence)
end
