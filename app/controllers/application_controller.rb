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

  patch "/models/:id" do
    update_model = Model.find(params[:id])
    update_model.update(
      release_date: params[:release_date]
    )
    update_model.to_json
  end

  get "/fans" do
    fans =Fan.all.order(:created_at)
    fans.to_json
  end

  post "/fans" do
    fans = Fan.create(
      username: params[:username],
      comment: params[:comment],
      model_id: params[:model_id]
    )
    fans.to_json
  end


  delete '/fans/:id' do
    fans  = Fan.find(params[:id])
    fans.destroy
    fans.to_json
  end

  patch "/fans/:id" do
    update_fan = Fan.find(params[:id])
    update_fan.update(
      comment: params[:comment]
    )
    update_fan.to_json
  end

end
