require_relative 'rolodex'
require_relative 'contact'
require 'sinatra'
#require 'data_mapper'

#DataMapper.setup(:default, "sqlite3:database.sqlite3")

@@rolodex = Rolodex.new

@@rolodex.create_contact(Contact.new("Jen", "F", "email@gmail.com", "Student"))


get '/' do
	erb :index
end

get '/contacts' do  		#displays all contacts
	erb :contacts
end

post '/contacts' do
	new_contact = Contact.new(params[:first_name], params[:last_name], params[:email], params[:notes])
	@@rolodex.create_contact(new_contact)
	redirect to('/contacts')
end

get '/contacts/new' do 
	erb :new_contact			
end

get "/contacts/:id" do 
	@contact = @@rolodex.find(params[:id].to_i)
	if @contact
		erb :show_contact
	else
		raise Sinatra::NotFound
	end
end

get "/contacts/:id/edit" do
	@contact = @@rolodex.find(params[:id].to_i)
	if @contact
		erb :edit_contact
	else
		raise Sinatra::NotFound
	end
end

put "/contacts/:id" do
	@contact = @@rolodex.find(params[:id].to_i)
	if @contact
		@contact.first_name = params[:first_name]
		@contact.last_name = params[:last_name]
		@contact.email = params[:email]
		@contact.notes = params[:notes]

		redirect to("/contacts")
	else
		raise Sinatra::NotFound
	end
end


delete "/contacts/:id/delete" do
	@contact = @@rolodex.find(params[:id].to_i)
	if @contact
		@@rolodex.delete_contact(@contact)
		redirect to("/contacts")
	else
		raise Sinatra::NotFound
	end
end




#everything the user sends (url, form control), it's access thru the params






