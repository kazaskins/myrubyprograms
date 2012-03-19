# my_nokogiri.rb
require 'nokogiri'
require 'open-uri'
doc = Nokogiri::HTML(open("http://satishtalim.github.com/webruby/chapter3.html"))

puts doc.content.scan(/\b[Tt]he/).count
