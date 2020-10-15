require 'net/http'
require 'open-uri'
require 'json'
require 'pry'



class Scraper
  
#puts doc

  @titles = []



  def simplify
    site = "https://en.wikipedia.org/wiki/List_of_ThunderCats_(2011_TV_series)_episodes"

    doc = Nokogiri::HTML(open(site))
    eptitle = doc.css("td.summary")
    simpletitle = eptitle.text

    simpletitle.select do |title|
      @titles << title
      @titles
    end  
  end


@titles
end