# my_hpricot.rb
require 'open-uri'
require 'hpricot'

page = Hpricot(open('http://satishtalim.github.com/webruby/chapter3.html'))
puts page.to_plain_text.scan(/\b[Tt]he/).count
