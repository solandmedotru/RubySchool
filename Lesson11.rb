a    = 10
b    = 20
a, b = b, a
puts a
puts b


dic = { :dog  => ['собака', 'пес'],
        :cat  => ['кошка', 'кот'],
        :girl => ['девущка', 'девочка', 'женщина'] }

loop do
  puts "Введите слово по английски: "
  word = gets.chomp.to_sym

  puts "Переводов #{dic[word].size}"
  puts "Перевод: "
  dic[word].each { |w| puts w }

end