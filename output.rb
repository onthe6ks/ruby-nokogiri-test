require 'nokogiri'

XPath = "//*[@class='unit']"


BASE_ADDRESS = "東京都杉並区"

def outputInfo(response)
    html = Nokogiri::HTML(response.body)

    #p html.xpath(XPath).size

    html.xpath(XPath).each do |item|
    puts "#{item.css('a')[0].text},#{item.css('span')[0].text},#{BASE_ADDRESS}#{item.css('td')[0].text},"
    end
end