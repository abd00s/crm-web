require 'sinatra'
require_relative 'contact.rb'
require_relative 'rolodex.rb'

$rolodex = Rolodex.new

get "/" do 
	@crm_name = "My Very Stylish CRM"
	erb :index
end

get "/contacts" do 
  erb :contacts
end

get "/contacts/new" do
	erb :new_contact
end

post '/contacts' do
  new_contact = Contact.new(params[:first_name], params[:last_name], params[:email], params[:note])
  $rolodex.add_contact(new_contact)
  redirect to('/contacts')
end

get '/calculate' do
	#do calculation
	# erb :results
end