require_relative 'challenge'
require_relative 'challenges_repo'
require_relative 'controller'
require_relative 'challenge_view'
require_relative 'router'

csv_file = 'challenges.csv'

challenges   = ChallengesRepo.new(csv_file)
controller = Controller.new(challenges)

router = Router.new(controller)

# Start the app
router.run
