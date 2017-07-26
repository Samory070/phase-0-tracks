# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# swaps lowercase to uppercase and vice vera
puts "iNvEsTiGaTiOn".swapcase 
#=> “InVeStIgAtIoN”

#1st arg. represent the index and the 2nd arg. is the inserted value
puts "zom".insert(1,'o')
#=> “zoom”

#centers str and the arg. is the amt. of whitespace on either side
puts "enhance".center(20)
#=> "    enhance    "

#converts entire str to uppercase
puts "Stop! You’re under arrest!".upcase
#=> "STOP! YOU’RE UNDER ARREST!"

#appends str to another str
puts "the usual".concat(" suspects")
#=> "the usual suspects"

#appends str to begining of the str
puts " suspects".prepend("the usual")
#=> "the usual suspects"

#removes last character in the str.
puts "The case of the disappearing last letter".chop
#=> "The case of the disappearing last lette"

#reverses entire str, removes last character, them reverses it again
puts "The mystery of the missing first letter".reverse.chop.reverse  
#puts "The mystery of the missing first letter".sub('T', '') 
#=> "he mystery of the missing first letter"

#Takes away  the whitespace between content
puts "Elementary,    my   dear        Watson!".squeeze(' ') 
#.gsub(/\s+/, "") 
#=> "Elementary, my dear Watson!"

#codepoints returns unicode codepoints.
puts "z".codepoints()
#=> 122 
#(What is the significance of the number 122 in relation to the character z?)

#counts how many occurences of the given arg.
puts "How many times does the letter 'a' appear in this string?".count('a')
#=> 4


