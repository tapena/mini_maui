class Api::KidsController < ApplicationController

  def all_kids_action
    @kids = Kid.all
    render 'all_kids_view.json.jbuilder'
  end   
end
