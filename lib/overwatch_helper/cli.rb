class OverwatchHelper::CLI

  def call
    puts "Welcome to Overwatch Helper!"
    list_characters
    menu
    goodbye
  end

  def list_characters
    @characters = OverwatchHelper::Character.all
    @characters.each.with_index(1) do |character, i|
      puts "#{i}. #{character.name}"
    end
  end

  def menu
    
    input = nil
    while input != "exit"
      puts "Type in the number of the character that you'd like more info on or type list to see all of the characters again, or type exit."
      input = gets.strip.downcase

      if input.to_i > 0
        puts @characters[input.to_i-1]
      elsif input == "list"
        list_characters
      else
        puts "Not sure what you want. Type list or exit."
      end
    end
  end

  def goodbye
    puts "see you tomorrow"
  end
end