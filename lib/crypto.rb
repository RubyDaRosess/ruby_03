# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'

def crypto
  page = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))
  tmp = page.css('/html/body/div[1]/div[1]/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr')
  crypto_name_array = (tmp.map { |tr| { tr.css('td[2]/div/a').text => tr.css('td[5]/a').text } })
  return crypto_name_array
end

begin
  crypto
rescue StandardError => puts 'You messed up in crypto!'
end
