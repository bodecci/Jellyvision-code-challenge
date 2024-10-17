require 'sinatra'
require 'json'

def parse_gift(raw)
  parsed = JSON.parse(raw)
  parsed['gift']
end

get '/' do
  "Welcome to the Simpson household"
end

get '/homer' do
  "I hope you brought donuts"
end

post '/homer' do
  gift = parse_gift(request.body.read)
  if gift == 'donut'
    [200, "Woohoo \n"]
  else
    [400, "D'oh \n"]
  end
end

###################################
# FIXME: Implement Lisa endpoints #
###################################

get '/lisa' do
  "The baritone sax is the best sax"
end

post '/lisa' do
  gift = parse_gift(request.body.read)
  case gift
  when 'books', 'book'
    [200, "I love it \n"]
  when 'sax', 'saxophone'
    [200, "I really love it \n"]
  when 'skateboard'
    [400, "I really hate it \n"]
  when 'video game', 'video_game'
    [400, "I hate it \n"]
  else
    [400, "Hmm...not sure\n"]
  end
end
