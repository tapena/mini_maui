class Api::KidsController < ApplicationController

  def all_kids_action
    @kids = Kid.all
    render 'all_kids_view.json.jbuilder'
  end  

  def first_kid_action
    @kid = Kid.first
    render 'first_kid.json.jbuilder'
  end

  def second_kid_action
    @kid = Kid.find_by(id: 2)
    render 'second_kid.json.jbuilder'
  end 

  def third_kid_action
    @kid = Kid.find_by(id: 3)
    render 'third_kid.json.jbuilder'
  end 
end
