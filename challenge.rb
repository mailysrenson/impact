require_relative 'user'

class Challenge
    attr_reader :description, :investment, :situation
    attr_accessor :id, :user

    def initialize(attributes = {})
      @description = attributes[:description]
      @investment = attributes[:investment]
      @situation = attributes[:situation]
      @id = attributes[:id]
    end
end
