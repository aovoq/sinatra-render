require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require './models.rb'

get '/' do
    @memos = Memo.all
    erb :index
end

post '/memo' do
    Memo.create(
        text: params[:text]
    )
    redirect '/'
end