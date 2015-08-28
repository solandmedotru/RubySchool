arr = [:rock, :scissors, :paper]

def get_answer(arr)
  puts "Choose 1 - rock, 2 - scissors, 3 - paper, or 0 - exit"
  ch = gets.chomp.strip.to_i
  if ch == 0
    puts "You choosed EXIT"
    exit
  else
    puts "You choosed #{arr[ch-1].to_s.upcase}!!!"
    return ch
  end
end

def result(arr)
  answer = arr[get_answer(arr) - 1]
  comp_answer = arr[rand(0..2)]
  puts "I choosed #{comp_answer.to_s.upcase}"

  if answer == :rock && comp_answer == :rock
    return "="
  end
  if answer == :rock && comp_answer == :scissors
    return "You WIN"
  end
  if answer == :rock && comp_answer == :paper
    return "You LOOS"
  end


  if answer == :scissors && comp_answer == :rock
    return "You LOOS"
  end
  if answer == :scissors && comp_answer == :scissors
    return "="
  end
  if answer == :scissors && comp_answer == :paper
    return "You WIN"
  end

  if answer == :paper && comp_answer == :rock
    return "You WIN"
  end
  if answer == :paper && comp_answer == :scissors
    return "You LOOS"
  end
  if answer == :paper && comp_answer == :paper
    return "="
  end
end

while true do
  puts result(arr)
end