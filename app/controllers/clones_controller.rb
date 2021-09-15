class ClonesController < ApplicationController
  def index
  end
  def new
    @clone = Clone.new
  end
  def create
    @clone = Clone.new(clones_params)
    redirect_to clone_path
  end

  private

  def clones_params

  end

end
