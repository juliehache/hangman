class Hangman
  def initialize
#Instead of a single word, there are now multiple words, randomly selected
    possibilities = ["coding", "ruby", "bacon", "rails"]
    @word = possibilities[rand(0..(possibilities.length - 1))]
  end

  def hide_word
    @user_word = @word.gsub(/\w/, "_")
    puts @user_word
  end

  def ask_for_guess
    puts "Guess a letter"
    @guess = gets.chomp
  end

#Changed this method
  def check_for_matches
    if @word.include? @guess
      @user_word[@word.index(@guess)] = @guess
    end
    puts @user_word
  end
#Added congratulations
  def play
    hide_word
    while @user_word != @word
      ask_for_guess
      check_for_matches
    end
    puts "Congratulations. You won the Internet!"
  end
end

game = Hangman.new
game.play
