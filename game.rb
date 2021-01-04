class Game

  attr_accessor :current_player, :game_over

  def initialize 
    @game_over = false
    @players = []
    @players[0] = Player.new('Player 1')
    @players[1] = Player.new('Player 2')
    @current_player = 0
  end 

  def to_s
    "The current game is between #{@players[0].name} and #{@players[1].name}. Is the game over? #{@game_over} Who is the current player? #{@current_player}"
  end



  def start
    
    while !@game_over do
      player = @players[@current_player]
      other_player = @players[(@current_player + 1) % 2]
      new_question = Question.new(player.name)
      new_question.ask
      answer = gets.chomp.to_i
      if answer == new_question.answer
        puts "You got it right!"
        puts "Your score is #{player.score}/3"
      else
        player.score -= 1
        puts "You got it wrong!"
        puts "Your score is #{player.score}/3"
        if player.score == 0
          puts "#{other_player.name} wins with a score of #{other_player.score}/3"
          @game_over = true
        end
      end

      @current_player = (@current_player + 1) % 2

    end

  end


  
  

end

