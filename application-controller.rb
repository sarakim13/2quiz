require 'bundler'
Bundler.require
require_relative 'models/questions'
require_relative 'models/crushqs'
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
    erb: index
  end
 get '/questions' do
   erb :questions
 end
 
get '/crush.erb' do
   erb :crush 
  end
  
  get 'crushqs' do
      erb :crushqs
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

post  '/answer' do
   answers = params.values
   @totl= 0
   answers.each do |answer|
     @totl += answer.to_i
   end
   puts @totl
   
   @crushsss = crushq(@totl)
   if @crushsss == "low crush"
       erb :lowcrush
   elsif @crushsss == "high crush"
   erb :highcrush
   end
   
   
   
end
 

end
