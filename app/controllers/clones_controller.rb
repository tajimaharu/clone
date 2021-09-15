class ClonesController < ApplicationController
  def index
  end
  def new
    @clone = Clone.new
  end
  def create
    Clone.create(clones_params)
    redirect_to clone_path
  end
end
