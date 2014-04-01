require_relative 'rolodex'
require_relative 'contact'
require 'sinatra'

get '/' do
	@crm_app_name = "My CRM!"
	erb :index
end

get "/contacts" do
	@contacts = []
	@contacts << Contact.new("Julie", "Hache", "julie@bitmakelabs.com", "Instructor")
	@contacts << Contact.new("Will", "Richman", "will@bitmakelabs.com", "Co-Founder")
	@contacts << Contact.new("Chris", "Johnston", "chris@bitmakelabs.com", "Instructor")
	@contacts << Contact.new("Jen", "Follero", "jennikins813@yahoo.com", "Future Web-Developer")

	erb :contacts
end

get '/contacts/new' do 			#use for a later step in the project
end