require 'sinatra'

get '/' do
	@crm_app_name = "My CRM!"
	erb :index
end

get '/contacts' do
	erb :contacts
end

get '/contacts/new' do 			#use for a later step in the project
end