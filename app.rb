require 'sinatra'
require 'json'

before /\.json/ do
  content_type 'application/json'
end

get '/' do
  erb :index
end

get '/items.json' do
  [
    {body: "hello world"},
    {body: "goodnight moon"}
  ].to_json
end
