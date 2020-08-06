=begin

Collect three infos: the loan amount,
the Annual Percentage Rate, the loan duration

method Calculate: monthly interest rate, loan duration in months,
monthly payment

=end
require 'yaml'
MESSAGES = YAML.load_file('loan_calculator_messages.yml')

def prompt(text)
  "=> " + text
end

def check_value(value)
  value.to_i.to_s == value || value.to_f.to_s == value
end

def calculator(loan_amount, annual_percentage_rate, loan_duration_years)
  monthly_interest_rate = (annual_percentage_rate / 100) / 12
  loan_duration_months = loan_duration_years * 12
  monthly_payment = loan_amount *
                    (monthly_interest_rate / (1 -
                    (1 + monthly_interest_rate)**(-loan_duration_months)))
  monthly_payment.ceil(2)
end

puts prompt(MESSAGES['welcome'])

loop do
  loan_amount = ''
  loop do
    puts prompt(MESSAGES['loan_amount'])
    loan_amount = gets.chomp
    if check_value(loan_amount)
      break
    else
      puts prompt(MESSAGES['wrong_number'])
    end
  end

  annual_percentage_rate = ''
  loop do
    puts prompt(MESSAGES['apr'])
    annual_percentage_rate = gets.chomp
    if check_value(annual_percentage_rate)
      break
    else
      puts prompt(MESSAGES['wrong_number'])
    end
  end

  loan_duration_years = ''
  loop do
    puts prompt(MESSAGES['loan_duration'])
    loan_duration_years = gets.chomp
    if check_value(loan_duration_years)
      break
    else
      puts prompt(MESSAGES['wrong_number'])
    end
  end

  result = calculator(loan_amount.to_f,
                      annual_percentage_rate.to_f, loan_duration_years.to_f)
  puts prompt("Your monthly payment will be #{result}$")

  puts prompt(MESSAGES['go_again'])
  repeat = gets.chomp.downcase
  break if repeat != 'y'
end

puts prompt(MESSAGES['bye'])
