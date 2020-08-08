# Tip calculator
#
# Prompt for a tip amount and a tip rate
#
# Compute the tip
# Display the tip and the total amount of the bill

def prompt(text)
  puts ">> " + text
end

def calculate_tip(bill, rate)
  (bill * (rate / 100))
end

prompt("Enter bill amount:")
bill_amount = gets.to_f

prompt("Enter tip rate:")
tip_rate = gets.to_f

tip = calculate_tip(bill_amount, tip_rate)

puts "The tip is #{format("$%.2f", tip)}"
puts "The total is #{format("$%.2f", (bill_amount + tip))}"
