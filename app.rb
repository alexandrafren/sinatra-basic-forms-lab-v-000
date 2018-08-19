require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/display_puppy' do
    @newpuppy = Puppy.new(params[:name], params[:age], params[:breed])
    erb :display_puppy
  end

end
