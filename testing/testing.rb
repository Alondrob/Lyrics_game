
class User

    def initialize
        print_help
        read_input
    end

    # def print_help
    #     puts "|--------------COMMANDS---------------|"
    #     puts "|--- Type start to begin the game------|"
    #     puts "|-----Type quit exit the game------|"
    #     puts "|-------------------------------------|"
    # end

    def print_help
        puts  "Welcome Lyrics expert!"
        puts  "To start the game please type => start"
        puts  "To exit at any time just type => quit "
    end

    def start_program
        puts :"Please enter your name:"
        name_input = gets.strip
        puts "Welcome #{name_input}!!, please choose from the following genres!"
    end

    def read_input
        puts "Type here:"
        input = gets.strip
        if "quit" == input
            abort("Goodbye!")
        elsif "start" == input
            start_program
        end
    end

end

alon =User.new