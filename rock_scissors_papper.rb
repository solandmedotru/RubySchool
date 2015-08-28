arr = [:rock, :scissors, :paper]

def get_answer(arr)
  puts 'Choose 1 - rock, 2 - scissors, 3 - paper, or 0 - exit'
  ch = gets.chomp.strip.to_i
  if ch == 0
    puts 'You choosed EXIT'
    exit
  else
    puts "You choosed #{arr[ch-1].to_s.upcase}!!!"
    ch
  end
end

def result(arr)
  answer      = arr[get_answer(arr) - 1]
  comp_answer = arr[rand(0..2)]
  puts "I choosed #{comp_answer.to_s.upcase}"

  'Nobody wins' if answer == comp_answer

  'You WIN' if answer == :rock && comp_answer == :scissors

  'You LOOS' if answer == :rock && comp_answer == :paper

  'You LOOS' if answer == :scissors && comp_answer == :rock

  'You WIN' if answer == :scissors && comp_answer == :paper

  'You WIN' if answer == :paper && comp_answer == :rock

  'You LOOS' if answer == :paper && comp_answer == :scissors

end

while true do
  puts result(arr)
end