# Write your code here.
require "pry"
def badge_maker(name)
"Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
badge_array = []
attendees.each{|name| badge_array << badge_maker(name)}
badge_array
end


def assign_rooms(attendees)
room = 1
welcome_array = []
attendees.each do |name|
  welcome_array << "Hello, #{name}! You'll be assigned to room #{room}!"
  room += 1
end
welcome_array
end

def printer(name)
welcome_array = []
welcome_array << batch_badge_creator(name)
welcome_array << assign_rooms(name)
welcome_array.each {|response| response.each {|text| puts text}}
end

