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