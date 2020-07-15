require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))
tmp = page.css('/html/body/div[1]/div[1]/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr')
pp (tmp.map { |tr| { tr.css('td[2]/div/a').text => tr.css('td[5]/a').text } })