class CLI

    def start
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "Hello there, do you like the NBA?" 
        puts "y or n"
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

        def teams_list
            NBA.all.each.with_index(1) do |team, i|
                puts "#{i}. #{team.name}"
            end
            team_selection
            
        end

        def goodbye
            puts "I hope to see you again soon!"
        end

        def invalid 
            puts "Hmm, that doesn't seem right, please try again."
        end

        def team_selection
            puts "Select a team for more detail"
            selection = user_input.capitalize
            team = NBA.find_team(selection)
            if team
                team_detail(team)
            else
                invalid
                team_selection
            end 
        end

        def team_detail(team)
            puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            puts "Full_name: #{team.full_name}"
            puts "Abbreviation: #{team.abbreviation}"
            puts "City: #{team.city}"
            puts "Division: #{team.division}"
            puts "Input 'y' to see the list, 'exit' to decline"
            puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" 
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
                menu
            end
        end
    end 