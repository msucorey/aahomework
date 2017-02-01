class Board
  attr_accessor :cups, :player1, :player2

  def initialize(name1, name2)
    @cups = Array.new(14) { [] }
    @player1 = name1
    @player2 = name2
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_with_index do |cup, i|
      next if i == 6 || i == 13
      4.times do
        cup << :stone
      end
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" unless start_pos.between?(0, 5)  || start_pos.between?(7, 12)
    return false if @cups[start_pos].empty?
    false
  end

  def make_move(start_pos, current_player_name)
    # until valid_move?(start_pos)
    #   puts "okay #{current_player_name}, make your move"
    #   start_pos = gets.chomp.to_i
    # end
    this_cup = (start_pos + 1) % 14
    @cups[start_pos].size.times do |stone|
      @cups[this_cup] << @cups[start_pos].pop
      puts "#{start_pos} now has #{@cups[start_pos].size} stones"
      puts "#{this_cup} now has #{@cups[this_cup].size} stones"
      this_cup = (this_cup + 1) % 14 unless @cups[start_pos].empty?
      this_cup = 0 if current_player_name == player2 && this_cup == 13
      this_cup = 7 if current_player_name == player1 && this_cup == 6
    end
    return :prompt if current_player_name == player1 && this_cup == 6
    return :prompt if current_player_name == player2 && this_cup == 13
    return :switch if @cups[this_cup].size == 1
    make_move(this_cup, current_player_name)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return true if @cups[0..5].all? { |el| el.size == 0}
    return true if @cups[7..12].all? { |el| el.size == 0}
    false
  end

  def winner
    return player1 if @cups[6].size > @cups[13].size
    return player2 if @cups[13].size > @cups[6].size
    return "TIE GAME!"
  end
end
