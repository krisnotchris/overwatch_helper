class OverwatchHelper::Character
  attr_accessor :name, :real_name, :age, :base
  def self.all
    # should list all the characters
    self.scrape_characters
  end

  def self.scrape_characters
    index_url = "http://overwatch.wikia.com"
    doc = Nokogiri::HTML(open("http://overwatch.wikia.com/wiki/Overwatch_Wiki"))
    @characters = doc.css("div#gallery-1").collect do |characters|
      {
        :name => characters.css("div.lightbox-caption a").text,
        :profile_url => index_url + characters.css("a").attribute("href").value
      }
    end
    binding.pry
  end

  def self.scrape_info
    
  end
end