require 'sinatra'

get "/" do 
	@crm_name = "My CRM"
	erb :index
end