require 'sinatra'
get '/' do
  "This is the route"
end

get '/hello/:name' do
    "Hello #{params[:name]}"
end

get '/say/*/to/*' do
    params[:splat].join(' ')
end

get '/greet/*/*' do |greeting, object|
    "#{greeting}! #{object}"
end

get '/time' do 
    "Hello World, it's #{Time.now} on the server"
end