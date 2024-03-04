# Candy controller
class CandiesController < ApplicationController
  before_action :fetch_candy, only: %i[edit update]

  def index
    @candys = Candy.all
  end

  def new
    @candy = Candy.new
  end

  def create
    @candy = Candy.new(allow_candy_params)
  end

  def edit() end

  def update
    if @candy.update(allow_candy_params)
      redirect_to @candy
    else
      render :edit
    end
  end

  private

  def allow_candy_params
    params.require(:candy).permit(:name, :description, :rate)
  end

  def fetch_candy
    @candy = Candy.find(params[:id])
  end
end
