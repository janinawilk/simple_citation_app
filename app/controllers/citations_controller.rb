class CitationsController < ApplicationController
  before_action :set_citation, only: [:show, :edit, :update, :destroy]

  def index
    @citations = Citation.paginate(
      page: params[:page], per_page: 10).order(:created_at)
  end

  def show
  end

  def new
    @citation = Citation.new
  end

  def edit
  end

  def create
    if new_citaion.save
      redirect_to citations_path
    else
      redirect_to new_citation_path
    end
  end

  def update
  end

  def destroy
    @citation.destroy
      redirect_to citations_path, notice: 'Task successfully deleted'
  end

  private

  def set_citation
    @citation = Citation.find(params[:id])
  end

  def citation_params
    params.require(:citation).permit(:citation, :author)
  end

  def new_citaion
    @citation = Citation.new(citation_params)
  end
end
