class UserView

  def add_challenge_index
    puts "Which challenge do you want to add?"
    index = gets.chomp.to_i
  end

  def puts_stuff(stuff)
    puts stuff
  end
end