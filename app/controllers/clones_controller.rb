class ClonesController < ApplicationController
  before_action :set_clone, only: [:edit, :update, :destroy]
  def index
    @clones = Clone.all
  end

  def new
    @clone = Clone.new
  end

  def create
    @clone = Clone.create(clones_params)
    if @clone.save
      redirect_to clones_path
    else
      render "clones"
    end
  end

  def edit
  end

  def update
    if @clone.update(clone_params)
      redirect_to clones_path, notice: "更新しました"
    else
      render :edit
    end
  end

  def destroy
    @clone.destroy
    redirect_to clones_path, notice: "削除しました"
  end
private

  def clones_params
    params.permit(:content)
  end

  def set_clone
    @clone = Clone.find(params[:id])
  end
end
