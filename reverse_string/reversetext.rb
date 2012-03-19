class ReverseText
  def call(env)
    req = Rack::Request.new(env)
    string_to_reverse = req.params['string'] 

    Rack::Response.new.finish do |res|
      res['Content-Type'] = 'text/plain'
      res.status = 200
      res.write "Reversed string = #{string_to_reverse.reverse}"
    end
  end
end