class ParagraphsController < ApplicationController
  def new
    @paragraph = Paragraph.new
  end

  def create
    @paragraph = Paragraph.new(paragraph_params)
    if @paragraph.save
      redirect_to section_path(id: paragraph_params[:section_id])
    else
      render 'new'
    end
  end

  def edit
    @paragraph = Paragraph.find(params[:id])
  end

  def update
    @paragraph = Paragraph.find(params[:id])
    if @paragraph.update(paragraph_params)
      redirect_to section_path(id: paragraph_params[:section_id])
    else
      render 'edit'
    end
  end

  private

  def paragraph_params
    params.require(:paragraph).permit(:content, :section_id, images: [])
  end
end
