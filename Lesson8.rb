def get_command
  direction = [:left, :right, :up, :down]
  direction[rand(0..3)]
end

command = get_command

puts "Recived command #{command}"

if command == :left
  puts "Robot go to the left"
end

if command == :right
  puts "Robot go to the right"
end

if command == :up
  puts "Robot go to the up"
end

if command == :down
  puts "Robot go to the down"
end