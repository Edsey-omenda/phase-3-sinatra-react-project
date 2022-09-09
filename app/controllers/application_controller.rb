class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  #Get  method  which is  responsible  for  fetching data from our  sinatra  server
  get "/models" do
    models = Model.all.order(:created_at)
    models.to_json
  end

  post '/models' do
    message = Model.create(
      title: params[:title],
      thumbnail: params[:thumbnail],
      short_description: params[:short_description],
      release_date: params[:release_date],
      city: params[:city]
    )
    model.to_json
  end

  delete '/models/:id' do
    model  = Model.find(params[:id])
    model.destroy
    model.to_json
  end

end
