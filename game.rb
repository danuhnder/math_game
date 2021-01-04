class Game

  def initialize 
    winner = false
  end 


  def start
    player_one = Player.new('Player 1')
    player_two = Player.new('Player 2')
    

    while winner = false
      new_question = Question.new(current_player)
      new_question.ask
      answer = gets.chomp
      if answer != new_question.answer
        #modify score -1
        puts "you got it wrong"
      end


    end

  end


  
  

end

