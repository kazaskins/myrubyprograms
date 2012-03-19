require './my_app'
run MyApp.new

#run lambda { |env| [200, {"Content-Type" => "text/plain"}, ["Hello. The time is #{Time.now}"]] }
