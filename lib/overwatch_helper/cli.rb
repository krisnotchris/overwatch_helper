class OverwatchHelper::CLI

  def call
    puts "Welcome to Overwatch Helper!"
    list_characters
  end

  def list_characters
    puts <<-DOC
    1. Bastion
    2. Hanzo
    DOC
  end
end