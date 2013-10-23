class Hangman
  def initialize
    @word = "bitmaker"
  end

  def hide_word
    @user_word = @word.gsub(/\w/, "_")
    puts @user_word
  end

  def ask_for_guess
    puts "Guess a letter"
    @guess = gets.chomp
  end

  def check_for_matches
    index = 0
    @word.each_char do |letter|
      if letter == @guess
        @user_word[index] = letter
      end
      index += 1
    end
    puts @user_word
  end

  def play
    hide_word
    while @user_word != @word
      ask_for_guess
      check_for_matches
    end
  end
end

game = Hangman.new
game.play
