while true do
  "|/-\\".each_char { |c|
  print "\r#{c}"
  sleep 0.2
  }
end