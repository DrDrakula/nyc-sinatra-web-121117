class FiguresController < ApplicationController

  get '/figures' do
    @figures = Figure.all
    erb :"figures/index"
  end

  get '/figures/new' do
    @titles = Title.all
    # binding.pry
    erb :"/figures/new"
  end

  get '/figures/:id' do
    @figure = Figure.find(params[:id])
    erb :"figures/show"
  end

  post '/figures' do
    @titles = Title.all
    @figure = Figure.find_or_create_by(params[:figure])
    binding.pry
    if !params["figure"]["name"].empty?
      @figure.titles << Title.create(params[:title])
    end
    @figure.save
    redirect "/figures/#{@figure.id}"
  end

  # patch ''


end
