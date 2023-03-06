class SectionsController < ApplicationController
  def new
    @section = Section.new
  end

  def index
    @sections = Section.all
  end

  def create
    @section = Section.new(section_params)
    if @section.save
      redirect_to themes_path
    else
      render 'new'
    end
  end

  def show
    @section = Section.find(params[:id])
  end

  private

  def section_params
    params.require(:section).permit(:title, :theme_id)
  end
end
