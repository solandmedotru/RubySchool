puts "Enter name: "
name = gets.strip.split().map(&:capitalize).join(" ")
puts "Hello, \t\t\t#{name}!"
puts "In your name \t#{name.size} simbols"
