persons = ["Andrey", "Galina", "Denis", "Anastasia"]

persons.each_index do |index|
  if persons[index] == "Andrey"
    puts "#{index}: #{persons[index].upcase}"
  else
    puts "#{index}: #{persons[index]}"
  end
  name = persons[index].split(//)
  name.each_index do |i|
    if i.even?
      name[i].upcase!
    end
  end
  puts name.join
end
