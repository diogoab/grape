load '/app.rb'

run Rack::Cascade.new [
    HelloApi
]
