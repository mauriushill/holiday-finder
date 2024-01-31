require "sinatra"
require "sinatra/reloader"
require "http"
require "json"

get("/") do
  erb(:home)
end


get("/holiday") do
  api_key = ENV.fetch("API_KEY")
  raw_response = HTTP.get("https://calendarific.com/api/v2/holidays?&api_key=#{api_key}&country=US&year=2019")
  

  parsed = JSON.parse(raw_response)
  @holidays = parsed.fetch("response").fetch("holidays")
  erb(:holidayfinder)
end
