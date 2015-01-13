require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @a = params.fetch("a")
  @b = params.fetch("b")
  @c = params.fetch("c")
  @triangle = Triangle.new(@a, @b, @c)
  erb(:results)
end
