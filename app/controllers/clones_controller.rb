class ClonesController < ApplicationController
  def index
    @clones = Clone.all
  end

  def new
    @clone = Clone.new
  end

  def create
    @clone = Clone.create(clones_params)
    redirect_to clones_path
  end

  def show
  end


private

  def clones_params
    params.permit(:content)
  end

end
