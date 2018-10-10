class AdminController < ApplicationController
  def db_manager
    unless user_signed_in? and current_user.id == 1
      render :file => "public/401.html", :status => :unauthorized
    else
      @table = params[:q]
    end
  end
end
