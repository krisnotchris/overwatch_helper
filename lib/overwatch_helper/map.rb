class OverwatchHelper::Map
  attr_accessor :name
  def self.all
    # should list all the maps
    self.scrape_maps
  end

  def self.scrape_maps
    doc = Nokogiri::HTML(open("http://overwatch.wikia.com/wiki/Overwatch_Wiki"))
    @maps = doc.css("div#gallery-2 div.lightbox-caption").collect do |i|
      {
        :name=>i.text
      }
    end
    @maps
  end
end



