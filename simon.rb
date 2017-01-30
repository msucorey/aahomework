class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize(length = 4)
    @sequence_length = length
    @game_over = false
    @seq = Array.new(length) { |el| COLORS[rand(4)]}
  end

  def play
    until game_over
      take_turn
    end
  end

  def take_turn
    show_sequence
    require_sequence
  end

  def show_sequence
    puts seq.join(",")
  end

  def require_sequence
    guess = gets.chomp
    if guess == seq.join(",")
      round_success_message
    else
      game_over_message
    end
    @game_over = true
  end

  def add_random_color

  end

  def round_success_message
    puts "you win"
  end

  def game_over_message
    puts "you lose"
  end

  def reset_game

  end
end

game = Simon.new
game.play
