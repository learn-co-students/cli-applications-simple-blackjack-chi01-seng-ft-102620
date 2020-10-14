def welcome
  puts 'Welcome to the Blackjack Table'
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum_of_cards = deal_card + deal_card
  display_card_total(sum_of_cards)
  sum_of_cards
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  case input
  when "s"
    card_total
  when "h"
    card_total += deal_card
  else
    invalid_command
    hit?(card_total)
  end
end


def invalid_command
  puts 'Please enter a valid command'
end

def runner
  welcome
end