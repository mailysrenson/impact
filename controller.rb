require 'pry-byebug'

class Controller
    def initialize(challenges)
      @challenges = challenges
      @view = ChallengeView.new
    end

    def list
      @view.puts_stuff("Here is the list of challenges: \n\n\n")
      challenges = @challenges.all
      @view.display(challenges)
    end

    def filter_by_investment
      challenges = @challenges.all
      category = @view.investment_category
      # binding.pry
      investment_challenges = challenges.select do |challenge|
        challenge.investment == category
      end
      @view.puts_stuff("Here is the list of challenges:")
      @view.display(investment_challenges)
    end

    def filter_by_situation
        challenges = @challenges.all
        category = @view.situation_category
        # binding.pry
        situation_challenges = challenges.select do |challenge|
          challenge.situation == category
        end
        @view.puts_stuff("Here is the list of challenges:")
        @view.display(situation_challenges)
    end

    def random_challenge
      challenges = @challenges.all
      random = challenges.sample(1)
      # binding.pry
      @view.puts_stuff("Here is the list of challenges:")
      @view.display(random)
    end

end
