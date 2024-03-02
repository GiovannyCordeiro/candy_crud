# Candy controller
class CandyController < ApplicationController
  def index
    @candys = Candy.all
  end
end
