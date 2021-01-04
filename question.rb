class Question

  attr_accessor :answer

  def initialize (player)
    @player = player
    @val1 = rand(1...20)
    @val2 = rand(1...20)
    @answer = @val1.to_i + @val2.to_i
  end
  
  def ask
    puts "#{@player}: What does #{@val1} plus #{@val2} equal?"
  end

end

# question1 = Question.new(1, 3, 7)

# question1.ask
