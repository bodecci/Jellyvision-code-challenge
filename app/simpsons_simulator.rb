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
  if gift == 'sax' || gift == 'saxophone'
    [200, "I REALLY love it \n"]
  else
    [400, "I hate it \n"]
  end
end
