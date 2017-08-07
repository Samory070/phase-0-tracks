# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#   	words + "!?!" + ":)"
#   end
# end
#p Shout::yelling_happily("wah gwan") # . before method works as well

module Shout
  
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
  	words + "!?!" + ":)"
  end
end

class Kid
   include Shout
 end
  		  
 class Librarian 
   include Shout
  end		  

dude = Kid.new  		  

 
 p dude.yell_angrily("homework")
 p dude.yell_happily("party on the beach?")
 
 educator = Librarian.new
 p educator.yell_happily("nice a quite")
 p educator.yell_angrily("SSSHHHHHH")
 


