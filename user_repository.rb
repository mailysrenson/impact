require_relative 'user_view'
require_relative 'challenges_repo'
require_relative 'user'
require_relative 'challenge_view'
require 'pry-byebug'

class UserRepository
  def initialize(csv_file, challenges_repository, user)
    @challenges_repository = challenges_repository
    @own_challenges = []
    @next_id = 1
    @user = user
    @view = UserView.new
    @challenge_view = ChallengeView.new
  end

  def create
    index = @view.add_challenge_index
    challenge = @challenges_repository.find{ |challenge| challenge.id == index.to_i}
    #@user.add_challenge(challenge)
    @own_challenges << challenge
  end
end

all_challenges = ChallengesRepo.new('challenges.csv').all
# p all_challenges
me = User.new(name: "mailys", id: 1)
challenge_to_add = UserRepository.new('users.csv', all_challenges, me).create
p challenge_to_add

