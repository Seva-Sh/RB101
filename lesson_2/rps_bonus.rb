require 'yaml'

MESSAGES = YAML.load_file('rps_bonus_messages.yml')
VALID_CHOICES = %w(r rock p paper l lizard sp spock sc scissors)
CONVERT_CHOICES = { ['r', 'rock'] => 'rock',
                    ['p', 'paper'] => 'paper',
                    ['l', 'lizard'] => 'lizard',
                    ['sp', 'spock'] => 'spock',
                    ['sc', 'scissors'] => 'scissors' }
GAME_RULES = { 'rock' => ['lizard', 'scissors'],
               'lizard' => ['spock', 'paper'],
               'spock' => ['scissors', 'rock'],
               'scissors' => ['paper', 'lizard'],
               'paper' => ['rock', 'spock'] }

def prompt(message)
  puts "=> " + message
end

def display_choices(user, comp)
  prompt("You chose: #{user}; Computer chose: #{comp}")
end

def display_scores(user_count, computer_count)
  prompt "Your current score: #{user_count}"
  prompt "Computer score: #{computer_count}"
end

def user_chooses_move()
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
      prompt(MESSAGES['wrong_choice2'])
      sleep 1
      system('clear')
    end
  end
  choice
end

def convert_choice(user_choice)
  CONVERT_CHOICES.each do |key, value|
    return value if key.include?(user_choice)
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

def update_scores(player, computer, player_count, comp_count)
  if GAME_RULES[player].include?(computer)
    result = player_count.to_i + 1
    player_count.clear
    player_count << result.to_s
  elsif GAME_RULES[computer].include?(player)
    result = comp_count.to_i + 1
    comp_count.clear
    comp_count << result.to_s
  end
end

def warm_up()
  prompt(MESSAGES['wait3'])
  sleep 1
  prompt(MESSAGES['wait2'])
  sleep 1
  prompt(MESSAGES['wait1'])
  sleep 1
end

def someone_grand_winner?(user_count, computer_count)
  if user_count == '5'
    prompt(MESSAGES['you_won'])
    true
  elsif computer_count == '5'
    prompt(MESSAGES['computer_won'])
    true
  else
    false
  end
end

def play_again?()
  answer = ''
  loop do
    prompt(MESSAGES['go_again'])
    answer = gets.chomp
    if answer.downcase == 'y' || answer.downcase == 'yes'
      answer = false
      break
    elsif answer.downcase == 'n' || answer.downcase == 'no'
      answer = true
      break
    else
      prompt(MESSAGES['wrong_choice'])
      sleep 1
      system('clear')
    end
  end
  return answer
end

system('clear')
prompt(MESSAGES['welcome'])
loop do
  user_count = '0'
  computer_count = '0'
  loop do
    display_scores(user_count, computer_count)

    choice = user_chooses_move()
    computer_choice = VALID_CHOICES.sample

    full_word_choice = convert_choice(choice)
    full_word_computer = convert_choice(computer_choice)

    display_choices(full_word_choice, full_word_computer)
    display_results(full_word_choice, full_word_computer)

    update_scores(full_word_choice, full_word_computer,
                  user_count, computer_count)

    break if someone_grand_winner?(user_count, computer_count)
    prompt(MESSAGES['again'])
    warm_up()
    system('clear')
  end
  break if play_again?()
end

prompt(MESSAGES['bye'])
