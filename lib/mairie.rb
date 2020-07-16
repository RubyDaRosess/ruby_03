require 'nokogiri'
require 'open-uri'
def mairie
  url1 = 'http://annuaire-des-mairies.com/val-d-oise.html'
  page = Nokogiri::HTML(URI.open(url1))
  tmp = page.css('[@class="lientxt"]')
  tmp.each do |nom|
    nomCommune = nom['href'].delete_prefix '.'
    url2 = "http://annuaire-des-mairies.com#{nomCommune}"
    page2 = Nokogiri::HTML(URI.open(url2))
    email = page2.css('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
    pp email
    pp nomCommune
  end
end

begin
  mairie
rescue StandardError => e
  puts 'You messed up in mairie!'
end