require 'csv'
require_relative 'challenge'

class ChallengesRepo
    def initialize(csv_file)
      @csv_file = csv_file
      @challenges = []
      @next_id = 1
      load_csv
    end

    def all
      @challenges
    end

    def load_csv
        csv_options = {headers: true, header_converters: :symbol}
        CSV.foreach(@csv_file, csv_options) do |row|
          row[:id] = row[:id].to_i
          @challenges << Challenge.new(row)
        end
        @nexti_id = @challenges.last.id + 1
    end

    def find_id(id)
      @challenges.find{ |challenge| challenge.id == id.to_i }
    end

end
