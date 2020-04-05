class Application
 
  def call(env)
    resp = Rack::Response.new
    
    def time 
      Time.now.to_s.split(" ")[1].split(":")[0].to_i
    end

    if time < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    
    resp.finish
  end
 
end