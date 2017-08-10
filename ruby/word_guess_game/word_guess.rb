# game class

class WordGame
  
  
	#initialize method that inserts word upon initializtion
  def initialize(word)
    @word = word
    @result_str = "_" * @word.length
  end 
 
	#method to guess letter	
	def letter_check(letter)
    @word.chars.each_with_index do |letter_in_word, index|
      if letter == letter_in_word
         @result_str[index] = letter
      end
    end
    if !@word.include?(letter)
      puts "Sorry try again"
    end
      @result_str
  end

    def winner
		  word_check = @word.split("")
      word_check.map! { |char| char + " " }
      word_check = word_check.join("")
      if word_check == @result_str
        puts "\nYAY!! YOU WON!!!!"
      else
        puts "\nBetter luck next time!"
      end
    end
	end


#user interface

puts "Welcome to the Word Game!"

puts "Pick a word Player 1"
user_word = gets.chomp

game = WordGame.new(user_word)

word_array = []
guess_array = []
count = 0

while  count < user_word.length

  puts "Player 2 pick a letter"
  selection = gets.chomp

  word_array.each do |letter|
    while letter == selection
      puts "Already selected that, try again"
      selection = gets.chomp
    end
  end
  word_array << selection
  guess_array << game.letter_check(selection)
  
  puts "Your guess is #{guess_array.last}"

  if count == user_word.length
    puts "All done"
  end

  
  count += 1
end

game.winner


