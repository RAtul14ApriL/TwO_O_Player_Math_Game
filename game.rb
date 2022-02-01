class Game
  def initialize(player1, player2)
    @player1 = Players.new(player1)
    @player2 = Players.new(player2)
  end

  def start
    puts "*---- Math Mind ----*\n#{@player1.name} VS #{@player2.name}"
    run_game
  end

  def show_score
    puts "P1: #{@player1.life}/3 === #{@player2.life}/3 :P2"
    puts "*---------------- Next Turn --------------------*"
  end

  def find_winner
    if @player1.lost
      puts "Oops! You're Dead!"
      show_winner(@player2)
      exit(0)
    elsif @player2.lost
      puts "Oops! You're Dead!"
      show_winner(@player1)
      exit(0)
    end
  end

  def show_winner(player)
    puts "#{player.name} Wins with the score of #{player.life}/3"
  end

  def run_game
    if @player1.life != 0 && @player2.life != 0
      @player1.ask_question
      puts "\n"
      find_winner
      puts "\n"
      @player2.ask_question
      puts "\n"
      find_winner
      puts "\n"
      show_score
      puts "\n"
      run_game
    end
  end
end