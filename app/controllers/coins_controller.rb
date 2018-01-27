class CoinsController < ApplicationController

  def show
    @coin  = Coin.params[:id]
  end
  def new
    @coin = Coin.new
  end
  def index
    @coin = Coin.all
  end

end
