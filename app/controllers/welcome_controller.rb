class WelcomeController < ApplicationController
  before_action :get_a_number

  def fileserve
    @justfile = JustFile.find_or_create_by(name:"public")
    session[:serve_from] = request.referer
  end

  def fileserve_private
    @justfile = JustFile.find_or_create_by(name:"private")
    session[:serve_from] = request.referer
    render :fileserve
  end

  def update_vars
    @a_number.update!({as_integer: params['a_number']})
    @a_message.update!({as_string: params['a_message']})
    redirect_to :root
  end

  private
  def get_a_number
    @a_number = GlobalVariable.where(name:"a_number").first_or_create! {|x| x.as_integer=0}
    @a_message = GlobalVariable.where(name:"a_message").first_or_create! {|x| x.as_string=""}
  end

end
