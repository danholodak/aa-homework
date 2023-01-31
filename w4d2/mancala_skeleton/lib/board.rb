class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14){[]}
    place_stones
  end

  def place_stones
    (0..5).each {|i| 4.times{@cups[i] << :stone}}
    (7..12).each {|i| 4.times{@cups[i] << :stone}}
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    if !((0..5).include?(start_pos)||(7..12).include?(start_pos))
      raise 'Invalid starting cup'
    elsif @cups[start_pos].empty?
      raise 'Starting cup is empty'
    else
      return true
    end

  end

  def make_move(start_pos, current_player_name)
    holder = []
    to_skip = 13 if current_player_name == @name1
    to_skip = 6 if current_player_name == @name2
    if valid_move?(start_pos)
      until @cups[start_pos].empty?
        holder << @cups[start_pos].pop
      end
      i=start_pos+1
      until holder.empty?
        i += 1 if i == to_skip
        if i == 14
          i = 0
        end
        @cups[i] << holder.pop
        i +=1
      end
    end
    render
    winner if one_side_empty?
    return next_turn(i-1)
  end

  def next_turn(ending_cup_idx)

    current = @cups[ending_cup_idx]
    if ending_cup_idx != 6 && ending_cup_idx != 13 && !current.empty?
      return ending_cup_idx
    elsif ending_cup_idx != 6 && ending_cup_idx != 13 && current.length == 1
      return :switch
    else
      return :prompt
    end
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    cups[0..6].all?{|cup| cup.empty?} || cups[8..13].all? {|cup| cup.empty?} 
  end

  def winner
      if @cups[6].length == @cups[13].length
        return :draw
      elsif @cups[6].length > @cups[13].length
        return @name1
      elsif @cups[6].length < @cups[13].length
        return @name2
      end

  end
end
