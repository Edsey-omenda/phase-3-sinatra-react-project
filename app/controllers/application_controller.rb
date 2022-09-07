class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  #Get  method  which is  responsible  for  fetching data from our  sinatra  server
  get "/models" do
    models = Model.all.order(:created_at)
    models.to_json
  end

end
