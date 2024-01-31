require "sinatra"
require "sinatra/reloader"
require "http"
require "json"

get("/") do
  erb(:home)
end


get("/holiday") do
@api_key = ENV.fetch("API_KEY")
 
  erb(:holidayfinder)
end
