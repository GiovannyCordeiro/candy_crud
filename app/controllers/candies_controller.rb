# Candy controller
class CandiesController < ApplicationController
  before_action :fetch_candy, only: %i[show edit update destroy]

  def index
    @candys = Candy.all
  end

  def new
    @candy = Candy.new
  end

  def create
    @candy = Candy.new(allow_candy_params)
  end

  def show() end

  def edit() end

  def update
    if @candy.update(allow_candy_params)
      redirect_to @candy
    else
      render :edit
    end
  end

  def destroy
    @candy.destroy
    redirect_to root_path
  end

  private

  def allow_candy_params
    params.require(:candy).permit(:name, :description, :rate)
  end

  def fetch_candy
    @candy = Candy.find(params[:id])
  end
end
