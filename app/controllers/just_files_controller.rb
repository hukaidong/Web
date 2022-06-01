class JustFilesController < ApplicationController
  before_action :set_file

  def show
    if @just_file.main_file.attached?
      redirect_to @just_file.main_file 
    end
    render plain: "File not attached:\n#{params.inspect}\n#{@just_file.inspect}"
  end

  def update
    @just_file.update! main_file: file_param
    redirect_back fallback_location: root_path
  end

  private
  def set_file
    @just_file = JustFile.where(id: params[:id])
  end

  def file_param
    params.require(:just_file).require(:main_file)
  end
end
