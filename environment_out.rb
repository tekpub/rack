class EnvironmentOut

  def initialize(app)
    @app = app
  end
  
  def call(env)
    @env = env
    status, headers, @response= @app.call(env)
    [status, headers, self]
  end
  
  def each(&block)
    output = ""
    @env.keys.each {|key| output+="<li>#{key}=#{@env[key]}"}
    block.call("<p>#{output}</p>")
    @response.each(&block)
  end
  
end