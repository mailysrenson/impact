class Router
    def initialize(controller)
      @controller = controller
      @running    = true
    end

    def run
        puts "\n\n\n"
        puts "Welcome to the only app to save the planet as a community!"
        puts '-' * 30

    while @running
        display_tasks
        action = gets.chomp.to_i
        print `clear`
        route_action(action)
      end
    end

    private

    def route_action(action)
      case action
      when 1 then @controller.list
      when 2 then @controller.filter_by_investment
      when 3 then @controller.filter_by_situation
      when 4 then @controller.random_challenge
      # when 5 then @user_controller.
      when 6 then stop
      else
        puts "Please press 1, 2, 3 or 4"
      end
    end
  
    def stop
      @running = false
    end


    def display_tasks
        puts ""
        puts "What do you want to do next?"
        puts "1 - See all the challenges"
        puts "2 - Filter the challenges by investment"
        puts "3 - Filter the challenges by situation"
        puts "4 - Get a random challenge"
        puts "6 - Stop and exit the program"
      end

end
