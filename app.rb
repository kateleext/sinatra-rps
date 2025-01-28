require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/rock") do
  @ourmove = "rock"
  @theirmove = ["rock","paper","scissors"][rand(3)]
  if @theirmove == "paper"
    @outcome = "lost"
  elsif @theirmove == "rock"
    @outcome = "tied"
  elsif @theirmove == "scissors"
    @outcome = "won"
  end
  erb(:play)
end

get("/paper") do
  @ourmove = "paper"
  @theirmove = ["rock","paper","scissors"][rand(3)]
  if @theirmove == "paper"
    @outcome = "tied"
  elsif @theirmove == "rock"
    @outcome = "won"
  elsif @theirmove == "scissors"
    @outcome = "lost"
  end
  erb(:play)
end

get("/scissors") do
  @ourmove = "scissors"
  @theirmove = ["rock","paper","scissors"][rand(3)]
  if @theirmove == "paper"
    @outcome = "won"
  elsif @theirmove == "rock"
    @outcome = "lost"
  elsif @theirmove == "scissors"
    @outcome = "tied"
  end
  erb(:play)
end
