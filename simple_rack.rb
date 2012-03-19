# simple_rack.rb
require 'rack'

simple_rack_proc = lambda { |env| [200, {"Content-Type" => "text/plain"}, ["Command line argument you typed was #{ARGV.join(' ')}"]] }

Rack::Server.new( { :app => simple_rack_proc, :server => 'webrick', :Port => 8500} ).start