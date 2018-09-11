class Api::KidsController < ApplicationController

  def index
    @kids = Kid.all
    render 'index.json.jbuilder'
  end  

  def create
    @kid = Kid.new(
                  name: params[:name],
                  price: params[:price],
                  image_url: params[:image_url],
                  description: params[:description]
                  )
    @kid.save
    render 'show.json.jbuilder'
  end  

  def show
    @kid = Kid.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @kid = Kid.find(params[:id])

    @kid.name = params[:name] || @kid.name
    @kid.price = params[:price] || @kid.price
    @kid.image_url = params[:image_url] || @kid.image_url
    @kid.description = params[:description] || @kid.description

    @kid.save
    render "show.json.jbuilder"
  end

  def destroy 
    @kid = Kid.find(params[:id])
    @kid.destroy
    render json: {message: "Destroyed"}
  end  

end
