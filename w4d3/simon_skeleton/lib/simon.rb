class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @seq = []
    @sequence_length = 1
    @game_over = false


  end

  def play
    until @game_over == true
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    @sequence_length +=1
    round_success_message
  end

  def show_sequence
    add_random_color
    puts seq.join" "
  end

  def require_sequence
    comparison = []
    i=1
    while comparison.length < seq.length
    puts "repeat color #{i}"
    comparison << gets.chomp
    if comparison[i-1] != seq[i-1]
      game_over = true
      return
    end
    i +=1
    end
  end

  def add_random_color
    seq << COLORS.sample

  end

  def round_success_message
    puts "you got it!"

  end

  def game_over_message
    puts "you didn't get it :("
  end

  def reset_game
    @game_over = false
    @seq = []
    @sequence_length = 1

  end
end
simon = Simon.new
simon.play