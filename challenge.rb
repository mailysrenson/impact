class Challenge
    attr_reader :description, :investment, :situation
    def initialize(description, investment, situation)
      @description, @investment, @situation = description, investment, situation
    end

end