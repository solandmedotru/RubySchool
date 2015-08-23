salary = 10000 # variable salary in Euro in month
tax    = 13
puts "Salary = #{ salary } Euro"
puts "Tax = " << tax.to_s << "%" # add rax to string
puts "Final = " + (salary - salary * tax).to_s + " Euro"