class Card
  attr_reader :question, :answer
  def initialize(input) # Will accept a hash input
    @question = input[:question]
    @answer = input[:answer]
  end
end

