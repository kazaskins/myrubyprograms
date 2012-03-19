require 'net/http'
require 'open-uri'
require 'hpricot'
require 'nokogiri'

# using net/http library and URI
url = URI.parse('http://satishtalim.github.com/webruby/chapter3.html')

Net::HTTP.start(url.host, url.port) do |http|
req = Net::HTTP::Get.new(url.path)
text = http.request(req).body
puts 'net/http: '
puts text.downcase.scan(/\bthe\b/).count
end

# using open-uri
f = open('http://satishtalim.github.com/webruby/chapter3.html')
text = f.readlines.join
puts 'open-uri: '
puts text.downcase.scan(/\bthe\b/).count

# using Hpricot
page = Hpricot(open('http://satishtalim.github.com/webruby/chapter3.html'))
puts 'Hpricot: '
puts page.inner_html.downcase.scan(/\bthe\b/).count

# using Nokogiri
doc = Nokogiri::HTML(open("http://satishtalim.github.com/webruby/chapter3.html"))
puts 'Nokogiri: '
puts doc.text.downcase.scan(/\bthe\b/).count