# my_simple_rackup.rb
class MyRackup
  def call(env)
    [200, {"Content-Type" => "text/plain"}, ["Command line argument you typed was #{ARGV[0]}"]]
  end
end

