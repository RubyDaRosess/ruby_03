# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'

def crypto
  page = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))
  array = page.css('/html/body/div[1]/div[1]/div[2]/div[1]/
        div[2]/div/div[2]/div[3]/div/table/tbody/tr')
  array.map { |tr| { tr.css('td[2]/div/a').text => tr.css('td[5]/a').text } }
end

begin
  pp crypto
rescue StandardError => e
  puts e.message
else
  puts 'Well Done!'
end
