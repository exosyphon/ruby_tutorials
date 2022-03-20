require 'sinatra'
require 'sinatra/activerecord'
require './models/todo'

set :database, {:adapter => 'sqlite3', :database => 'db/development.sqlite'}

get '/' do
    @todos = Todo.all
    erb :'index'
end

post '/' do
    Todo.create(content: params[:content])
    redirect '/'
end
