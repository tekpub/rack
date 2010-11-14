require "model/haiku"
class HaikuFilter
  
  def initialize(app)
    @app = app
  end
  
  def call(env)
    status, headers, @response= @app.call(env)
    [status, headers, self]
  end
  
  def each(&block)
    block.call("<p>#{Haiku.new.random}</p>")
    @response.each(&block)
  end
  
end