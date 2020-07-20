require 'csv'

class ChallengesRepo
    def initialize(csv_file)
      @csv_file = csv_file
      @challenges = []
      load_csv
    end

    def all
      @challenges
    end

    def load_csv
        csv_options = {headers: true, header_converters: :symbol}
        CSV.foreach(@csv_file, csv_options) do |row|
          challenge = Challenge.new(row[0], row[1], row[2])
          @challenges << challenge
        end
    end

end
