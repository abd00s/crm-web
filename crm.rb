require 'sinatra'
require_relative 'contact.rb'
require_relative 'rolodex.rb'

$rolodex = Rolodex.new

get "/" do 
	@crm_name = "My CRM"
	erb :index
end

get "/contacts" do 
  erb :contacts
end

get "/contacts/new" do
	erb :new_contact
end