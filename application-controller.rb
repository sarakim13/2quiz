require 'bundler'
Bundler.require
require_relative 'models/questions'

class MyApp < Sinatra::Base

 get'/' do
  erb :index
 end
 
get '/index1.erb' do
    erb :index1
  end
  
  get '/action_page.php' do
    erb :index
  end
  get '/signup.erb' do 
   erb :signup
  end 
  
  get '/index.erb' do
    "Hello World"
  end
 get '/questions' do
   erb :questions
 end



 post  '/results' do
   answers = params.values
   @total= 0
   answers.each do |answer|
     @total += answer.to_i
   end
   puts @total

   @workout = quiz(@total)
   if @workout == "low cardio"
     erb :lowcardio
   elsif @workout == "medium cardio"
     erb :mediumcardio
   elsif @workout == "hard cardio"
     erb :hardcardio
     elsif @workout == "low strength"
     erb :lowstrength
     elsif @workout == "medium strength"
     erb :mediumstrength
     elsif @workout == "hard strength"
     erb :hardstrength
  end
end
end
 

