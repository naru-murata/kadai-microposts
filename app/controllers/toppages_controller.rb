class ToppagesController < ApplicationController
  def index
    if logged_in?
      @micropost = current_user.microposts.build
      @microposts = current_user.microposts.order(id: :desc).page(params[:page])
    end
  end
  
  def new
  end
  
  def edit
  end
end
