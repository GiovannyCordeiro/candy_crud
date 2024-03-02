# Candy controller
class CandyController < ApplicationController
  def index
    @candys = Candy.all
  end

  def new
    @candy = Candy.new
  end
end
