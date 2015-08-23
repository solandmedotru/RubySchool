puts "Enter name: "
name = gets.strip.split().map(&:capitalize).join(" ")
puts "Hello, #{name}! In your name #{name.size} simbols"
