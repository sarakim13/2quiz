require 'bundler'
Bundler.require
#require_relative 'models/questions'

class MyApp < Sinatra::Base

 get'/' do
  erb :index
 end

 

 
end
