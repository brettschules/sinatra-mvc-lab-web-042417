require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @convert_word = PigLatinizer.new
    erb :convert
  end
end
