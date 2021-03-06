require 'sinatra'
require 'shotgun'
set :session_secret, 'super secret'

get '/' do
  'Hello world! I did it my way.'
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/form-cat' do
  @name = params[:name]
  erb(:index)
end


post '/named-cat' do
  @name = params[:name]
  erb(:index)
end

get '/secret' do
  'And now, the end is near.<br>
  And so I face the final curtain.'
end

get '/newyork' do
  "Start spreadin' the news, I'm leavin' today."
end

get '/flyme' do
  "Fly me to the moon.<br>
  Let me play among the stars."
end

get '/bojangles' do
  "I knew a man Bojangles.<br>
  And he'll dance for you."
end

get '/mack' do
  "Oh, the shark has pretty teeth dear.<br>
  And he shows 'em, pearly white."
end

get '/life' do
  "That's life (that's life) that's what people say.<br>
  You're riding high in April.<br>
  Shot down in May."
end

get '/bluemoon' do
  "Blue moon you saw me standing alone.<br>
  Without a dream in my heart.<br>
  Without a love of my own."
end
