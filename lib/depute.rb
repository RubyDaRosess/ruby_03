require 'nokogiri'
require 'open-uri'

def get_mail(depute_name)
    
end

def depute
    page = Nokogiri::HTML(URI.open('http://www2.assemblee-nationale.fr/deputes/liste/tableau'))
    tmp = page.css('//table/tbody/tr')
    depute_name = tmp.map {|tr|   { tr.css('td[1]/a').text.delete_prefix("Mme ").delete_prefix("M. ") => tr.css('td[1]/a/@href').text}}
    depute_name.map do |name|
        lien2 = "http://www2.assemblee-nationale.fr#{name}"
        pp lien2
    end
    get_mail(depute_name)
end

depute