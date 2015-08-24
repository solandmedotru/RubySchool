1.upto(10) do |n|
  if n.odd?
    puts "Число #{n} - Нечетное"
  else
    puts "Число #{n} - Четное"
  end
end

5.downto(-5) do |n|
  if n.odd?
    puts "Число #{n} - Нечетное"
  else
    puts "Число #{n} - Четное"
  end
end

say = "Hello"
10.times do |x|
  print say
  x.times do
    print "!"
  end
  puts
end

100000.times { print rand(30..120).chr }