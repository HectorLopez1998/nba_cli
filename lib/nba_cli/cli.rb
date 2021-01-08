class CLI

    def start
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "Hello there, do you like the NBA?" 
         joke
        puts "May I have your name?"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        API.get_data
        greet(user_input)
        end
    
    
        def menu
            selection = user_input
            if selection == 'y'
                teams_list
                menu
            elsif selection == 'exit'
                goodbye
            else
                invalid 
            end
        end
    end 