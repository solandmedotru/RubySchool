def game_over(money)
  puts "Game Over"
  puts "You have #{money} dollars"
end

def roll(one, two, three)
  # счётчик значения "one"
  10.times do |xx|
    meter = rand (0..5)
    if xx < 9
      print meter
      print "\r"
      sleep 0.08
    else
      print one
    end
  end
  puts

  # счётчик значения "two"
  10.times do |yy|
    meter = rand (0..5)
    if yy < 9
      print meter
      print "\r"
      sleep 0.08
    else
      print two
    end
  end
  puts

  # счётчик значения "three"
  10.times do |zz|
    meter = rand (0..5)
    if zz < 9
      print meter
      print "\r"
      sleep 0.08
    else
      print three
    end
  end
  puts
end

def start_game (money)
  one   = rand(1..5)
  two   = rand(1..5)
  three = rand(1..5)


  puts "Your bet?"
  bet = gets.strip.to_i
  roll(one, two, three)
  if one == two && two == three
    money = money + bet*3
    initial(money)
  elsif one == two || one == three || two == three
    money = money + bet*2
    initial(money)
  else
    money = money - bet
    initial(money)
  end
end

def initial(money)
  puts "You have #{money} dollars"
  puts "Готовы поиграть? Y/N"
  answer = gets.strip.upcase
  if answer == "Y"
    start_game(money)
  else
    game_over(money)
  end
end

puts "How much money do you have?"
money = gets.strip.to_i
initial(money)