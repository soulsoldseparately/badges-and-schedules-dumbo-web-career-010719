# Write your code here.

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(name_arr)
  new_arr = []
  name_arr.each { |item| new_arr << badge_maker(item) }
  
  return new_arr
end

def assign_rooms(speaker_arr)
  room_assignments = []
  speaker_arr.each_with_index do |name, idx|
    room_assignments[idx] = "Hello, #{name}! You'll be assigned to room #{idx + 1}!"
  end
  return room_assignments
end

def printer(attendees)
   batch_badge_creator(attendees).each {|item| puts item}
   assign_rooms(attendees).each {|item| puts item}
end