require './game.rb'
require './player.rb'
require './question.rb'

trial = Game.new

(val1, val2) = trial.generate_values

trial_question = Question.new(2, val1, val2)

trial_question.ask