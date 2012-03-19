# my_open_uri.rb
require 'open-uri'

f = open("http://satishtalim.github.com/webruby/chapter3.html")
puts f.readlines.join.scan(/\b[Tt]he/).count