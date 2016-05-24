class OverwatchHelper::CLI

  def call
    puts "Welcome to Overwatch Helper!"
    menu
    goodbye
  end

  def list_characters
    @characters = OverwatchHelper::Character.all
    @characters.each.with_index(1) do |i, index|
      puts "#{index}."+ "#{i[:name]}"
    end
  end

  def list_maps
    @maps = OverwatchHelper::Map.all
    @maps.each.with_index(1) do |i, index|
      puts "#{index}."+"#{i[:name]}"
    end
  end

  def menu
    
    input = nil
    while input != "exit"
      puts "To see current characters type 1, to see current maps type 2. Type exit to quit."
      input = gets.strip.downcase

      if input.to_i == 1
        list_characters
      elsif input.to_i == 2
        list_maps
      else
        puts "Not sure what you want. Type 1, 2, or exit."
      end
    end
  end

  def goodbye
    puts "See you on the battelground!"
  end
end