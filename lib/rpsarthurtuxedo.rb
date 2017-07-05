#require "rpsarthurtuxedo/version"

module Rpsarthurtuxedo
  # Rock paper scissors. Need a random number between 1 and 3 for computer choice,
  # and conditional logic that dictates the winner. Need 2 classes, one for
  # human players and one for computer, each game has 2 objects.

  # Need a method for human player to pick RPS, and a random one for computer.
  # Need a method to determine who wins.

  $valid = [1, 2, 3]

  class HumanPlayer
      def choose_RPS
      choice = ""
      until $valid.include?(choice)
        puts "1. Rock, 2. Paper, or 3. Scissors?"
        choice = gets.chomp.to_i
      end
      choice
    end
  end

  class ComputerPlayer
    def choose_RPS
      rand(1..3)
    end
  end

  def self.determine_winner
    player1 = HumanPlayer.new
    player2 = ComputerPlayer.new
    choice1 = player1.choose_RPS
    choice2 = player2.choose_RPS
    if choice1 == choice2
      puts "It's a tie!"
    elsif choice1 == 1
      if choice2 == 2
        puts "Paper covers rock. Player 2 wins!"
      else
        puts "Rock smashes scissors. Player 1 wins!"
      end
    elsif choice1 == 2
      if choice2 == 1
        puts "Paper covers rock. Player 1 wins!"
      else
        puts "Scissors cut paper. Player 2 wins!"
      end
    elsif choice1 == 3
      if choice2 == 1
        puts "Rock smashes scissors. Player 2 wins!"
      else
        puts "Scissors cut paper. Player 1 wins!"
      end
    end
  end





end

Rpsarthurtuxedo.determine_winner
