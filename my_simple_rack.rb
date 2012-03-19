# my_simple_rack.rb

simple_rack_proc = lambda { |env| [200, {"Content-Type" => "text/plain"}, ["Command line argument you typed was #{ARGV.join(' ')}"]] }

puts simple_rack_proc.call({})