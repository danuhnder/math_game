class Game

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



  # def start
    


  #   while game_over = false do
  #     new_question = Question.new(players[current_player].name)
  #     new_question.ask
  #     answer = gets.chomp
  #     if answer != new_question.answer
  #       #modify score -1
  #       puts "you got it wrong"
  #     end


  #   end

  # end


  
  

end

