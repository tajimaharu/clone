class ClonesController < ApplicationController
  before_action :set_clone, only: [:edit, :update, :destroy]
  before_action :get_all_clones, only: [:index, :create]
  before_action :set_new_clone, only: [:index, :new]

  def index
  end

  def new
  end

  def create
    @clone = Clone.create(clones_params)
    if @clone.save
      redirect_to clones_path
    else
      render :index
    end
  end

  def edit
  end

  def update
    if @clone.update(clones_params)
      redirect_to clones_path, notice: "更新しました"
    else
      render :edit
    end
  end

  def destroy
    @clone.destroy
    redirect_to clones_path, notice: "削除しました"
  end

  def confirm
    @clone = Clone.new(clones_params)
  end
  
private

  def clones_params
    params.require(:clone).permit(:content)
  end

  def set_clone
    @clone = Clone.find(params[:id])
  end

  def get_all_clones
    @clones = Clone.all
  end

  def set_new_clone
    @clone = Clone.new
  end
end
