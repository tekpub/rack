class Massive
  def initialize(app)
    @app = app
  end
  
  def call(env)
    status, headers, @response= @app.call(env)
    [status, headers, self]
  end
  
  def each(&block)
    block.call("<div style='font-size:5.0em'>")
    @response.each(&block)
    block.call(" - it's all small stuff</div>")
  end
  
end