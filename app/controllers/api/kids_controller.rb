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
    render 'create.json.jbuilder'
  end  

  def show
    @kid = Kid.find(params[:id])
    render 'show.json.jbuilder'
  end
end
