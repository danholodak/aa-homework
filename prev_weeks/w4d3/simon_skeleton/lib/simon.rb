class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @seq = []
    @sequence_length = 1
    @game_over = false


  end

  def play
    until @game_over
      take_turn
    end
    self.game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    if require_sequence == false
      @game_over = true 
    else
      @sequence_length +=1
      round_success_message
    end
  end

  def show_sequence
    add_random_color
    puts seq.join" "
    sleep(2)
    system("clear")
  end

  def require_sequence
    comparison = []
    i=1
    while comparison.length < seq.length
    puts "repeat color #{i}"
    comparison << gets.chomp
    if comparison[i-1] != seq[i-1]
      return false
    end
    i +=1
    end
    return true
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