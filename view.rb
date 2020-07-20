require 'pry-byebug'

class View
    def display(challenges)
      challenges.each_with_index do |challenge, index|
        puts "Challenge #{index + 1} - #{challenge.description}"
      end
      puts '-' * 30
    end

    def puts_stuff(stuff)
      puts stuff
    end

    def investment_category
      puts "Which category do you want?\n 1. free\n 2.<10€\n 3. 10€-50€\n 4.DIY"
      input = gets.chomp.to_i
      case input
      when 1
        category = " free"
      when 2
        category = " < 10€"
      when 3
        category = " 10-50€"
      when 4
        category = " DIY"
      else
        puts "wrong category"
      end
      return category
    end

    def situation_category
        puts "Which category do you want?\n 1. Parties & gifts\n 2. @home\n 3. OOH\n 4. Transport"
        input = gets.chomp.to_i
        case input
        when 1
          category = " parties and gifts"
        when 2
          category = " @home"
        when 3
          category = " OOH"
        when 4
          category = " transport"
        else
          puts "wrong category"
        end
        return category
      end
end
