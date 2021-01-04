class Question

  def initialize (player, val1, val2)
    @player = player
    @val1 = val1
    @val2 = val2
  end

  def ask
    puts "Player #{@player}: What does #{@val1} plus #{@val2} equal?"
  end

end

# question1 = Question.new(1, 3, 7)

# question1.ask
