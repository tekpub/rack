require "avery"
require "model/haiku"
require "model/quotes"
require "massive_filter"
class SmallStuff
  def call(env)
    @body = "Don't sweat the small stuff"
    @layout = "<html><body>STUFF</body></html>"
    @response = ["200", {"Content-Type" => "text/html"}, @body]
  end
  
  def each(&block)
    block.call("<html><body>")
    block.call(@response.last)
    block.call("</body></html>")
  end
end
