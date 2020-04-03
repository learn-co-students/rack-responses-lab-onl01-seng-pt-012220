class Application
 
  def call(env)
    resp = Rack::Response.new
    h = Time.now
    (h.hour >= 12) ? (resp.write "Good Afternoon!") : (resp.write "Good Morning!")

    resp.finish
  end
 
end