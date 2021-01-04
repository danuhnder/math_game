class Game

  attr_accessor :current_player, :game_over

  def initialize 
    @game_over = false
    @players = []
    @players[0] = Player.new('Player 1')
    @players[1] = Player.new('Player 2')
    @turn = 0
  end 

  def start
    while !@game_over do
      player = @players[@turn %2]
      other_player = @players[(@turn + 1) % 2]
      new_question = Question.new(player.name)
      new_question.ask
      answer = gets.chomp.to_i
      if new_question.validate(answer)
        puts "You got it right!"
      else
        player.lose_life
        puts "You got it wrong!"
        if player.score == 0
          puts "#{other_player.name} wins with a score of #{other_player.score}/3"
          @game_over = true
          break
        end        
      end
      puts "Your score is #{player.score}/3"
      @turn = @turn + 1
    end

  end

end

