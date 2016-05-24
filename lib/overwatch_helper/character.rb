class OverwatchHelper::Character
  attr_accessor :name
  def self.all
    # should list all the characters
    self.scrape_characters
  end

  def self.scrape_characters
    index_url = "http://overwatch.wikia.com"
    doc = Nokogiri::HTML(open("http://overwatch.wikia.com/wiki/Overwatch_Wiki"))
    @characters = doc.css("div#gallery-1 div.lightbox-caption").collect do |i|
      {
        :name=>i.text
      }
    end
    @characters
  end
end



