salary        = 10000 # variable salary in Euro in month
tax           = 0.13
MONTH_IN_YEAR = 12

puts "Salary = #{ salary } Euro"
puts "Tax = " << (tax * 100).to_s << "%" # add rax to string

month_salary = (salary - salary * tax)
puts 'Final = ' + month_salary.to_s + " Euro"

puts "Year salary without Tax = #{ month_salary * MONTH_IN_YEAR } Euro"
key = ''
while key != 'exit' do
  puts "To finish type 'exit' and press Enter!"
  key = gets.chomp
end