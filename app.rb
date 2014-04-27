require './idea'
require 'bundler'
Bundler.require

class IdeaBoxApp < Sinatra::Base
  not_found do
    erb :error
  end
  
   configure :development do
    register Sinatra::Reloader
  end
  
  get '/' do
    erb :index
  end

  post '/' do
    idea = Idea.new
    idea.save
    "Creating an IDEA!"
  end

  run! if app_file == $0
end

