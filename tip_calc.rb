bill = 60
tipPercent = 0.2
numPeople = 3
tip = bill * tipPercent
total = tip + bill
my_share = total / numPeople
puts "My share of the bill is " + my_share.to_s + " dollars"
puts "My share of the bill is #{my_share} dollars"
