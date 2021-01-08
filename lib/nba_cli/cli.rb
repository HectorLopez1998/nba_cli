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
    
        def joke
            selection = user_input
                if selection == "y"
                    puts "Cool! I knew we would get alone."
                else 
                    puts "Well, now you do!"
                end
        end

        def user_input
            gets.strip
        end

        def greet(name)
            puts "Cool name! #{name}, would you like me to show you a list of the teams that play in the NBA?."
            puts "Input 'y' to see the list, 'exit' to decline"
            menu
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