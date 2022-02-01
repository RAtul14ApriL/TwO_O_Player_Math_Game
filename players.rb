class Players
  attr_accessor :name, :life

  def initialize(name)
    @name = name
    @life = 3
  end

  def take_life
    self.life -= 1
  end

  def lost
    self.life == 0
  end

  def ask_question
    question = Question.new
    puts "#{self.name}: #{question.new_question}"
    print ">> "
    input = $stdin.gets.chomp.to_i
    if question.verify_answer(input) == true
      puts "Correct answer!"
    else
      self.take_life
      puts "That's the wrong answer!"
    end
  end
end