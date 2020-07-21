require_relative 'user_view'

class User
  def initialize(attributes = {})
    @username = attributes[:name]
    @id = attributes[:id]
    @own_challenges = []
    @next_id = 1
  end

  def add_user
    user.id = @next_id
    username = @user_view.ask_stuff("What's your username?")
    user = User.new(username: username, id: id)
    @next_id += 1
  end

  # def add_challenge(challenge)
  #  @own_challenges << challenge
  #  challenge.user = self
  # end


end
