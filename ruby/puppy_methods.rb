class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(int)
  	puts 'Woof!' * int
  end

  def roll_over
  	puts '*Rolls over*'
  end

  def dog_years(a)
  	b = a * 7
  	puts "You are #{b} in dog years"
  end	
  
  def jump
  	puts 'Up boy!'
  end

end

p 'Created new Puppy class' 
fido = Puppy.new 
sassy = Puppy.new 
lou = Puppy.new
sassy.fetch('ball')
fido.speak(3)
sassy.roll_over
fido.dog_years(28)
lou.jump

