# Candy controller
class CandiesController < ApplicationController
  def index
    @candys = Candy.all
  end

  def new
    @candy = Candy.new
  end

  def create
    @candy = Candy.new(allow_candy_params)
    if @candy.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def allow_candy_params
    params.require(:candy).permit(:name, :description, :rate)
  end
end
