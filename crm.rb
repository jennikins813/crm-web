require_relative 'rolodex'
require_relative 'contact'
require 'sinatra'

@@rolodex = Rolodex.new

get '/' do
	@crm_app_name = "My CRM!"
	erb :index
end

get '/contacts' do
	erb :contacts, :layout => :layout
end

get '/contacts/new' do 
	erb :new_contact			
end

get '/contacts/:id' do
	## erb: index? what do I put in here?!!
end

get '/contacts/:id/edit' do
	## what do I put in here?!!
end

get '/contacts/:id/delete' do  ## or do i use delete iso get??
	"Delete a contact"	 ## is this correct??
end

post '/contacts' do
	new_contact = Contact.new(params[:first_name], params[:last_name], params[:email], params[:notes])
	@@rolodex.create_contact(new_contact)
	redirect to('/contacts')
end


#everything the user sends (url, form control), it's access thru the params






