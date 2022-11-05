class ApplicationController < Sinatra::Base
set :default_content_type 'appliction/json'
  get '/' do
    { message: "Hello world" }.to_json
  end
get '/games' do
   # get all the games from the database
  games = Game.all.order(:title).limit(10)
      # return a JSON response with an array of all the game data
  games.to_json
end
end
