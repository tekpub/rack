
require "model/quotes"
class QuoteFilter
  
  def initialize(app)
    @app = app
  end
  
  def call(env)
    status, headers, @response= @app.call(env)
    [status, headers, self]
  end
  
  def each(&block)
    block.call("<p>#{Quotes.new.random}</p>")
    @response.each(&block)
  end
  
end