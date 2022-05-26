class JustFilesController < ApplicationController
  before_action :set_file

  def show
    if @just_file.main_file.attached?
      redirect_to @just_file.main_file 
    end
    render plain: "File not attached:\n#{params.inspect}\n#{@just_file.inspect}"
  end

  def update
    puts "-----Just File"
    puts plain: "#{params.inspect}\n#{@just_file.inspect}\n"
    #@just_file.main_file.attach file_param
    @just_file.update! main_file: file_param
    redirect_to fileserve_path
  end

  private
  def set_file
    @just_file = JustFile.first_or_create!
  end

  def file_param
    params[:just_file].require :main_file
  end
end
