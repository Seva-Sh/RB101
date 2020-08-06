VALID_CHOICES = %w(r p l sp sc)

GAME_RULES = { 'rock' => ['lizard', 'scissors'],
               'lizard' => ['spock', 'paper'],
               'spock' => ['scissors', 'rock'],
               'scissors' => ['paper', 'lizard'],
               'paper' => ['rock', 'spock'] }

def prompt(message)
  puts "=> #{message}"
end

def convert_choice(user_choice)
  case user_choice
  when 'r'
    'rock'
  when 'p'
    'paper'
  when 'l'
    'lizard'
  when 'sp'
    'spock'
  else
    'scissors'
  end
end

def display_results(player, computer)
  if GAME_RULES[player].include?(computer)
    prompt("You won!")
  elsif GAME_RULES[computer].include?(player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

user_count = 0
computer_count = 0
prompt("Welcome to the game! Whoever reaches five\
 wins first will be our grand winner!! Let's go!!!")
loop do
  choice = ''
  loop do
    choice_prompt = <<-MSG
      Choose one:
      r for rock,
      p for paper,
      l for lizard,
      sp for spock,
      sc for scissors.
    MSG

    prompt(choice_prompt)
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  full_word_choice = convert_choice(choice)
  full_word_computer = convert_choice(computer_choice)

  prompt("You chose: #{full_word_choice};\
  Computer chose: #{full_word_computer}")

  display_results(full_word_choice, full_word_computer)

  if GAME_RULES[full_word_choice].include?(full_word_computer)
    user_count += 1
  elsif GAME_RULES[full_word_computer].include?(full_word_choice)
    computer_count += 1
  end

  prompt "Your current score: #{user_count}"
  prompt "Computer score: #{computer_count}"
  if user_count == 5
    prompt "Congratulations, you are the grand winner!!!"
    break
  elsif computer_count == 5
    prompt "Unfortunately, computer is the grand winner!"
    break
  else
    prompt "Keep going!"
  end
end

prompt("Thank you for playing. Good bye!")
