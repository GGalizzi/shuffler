class CardsController < ApplicationController

  #layout "card_list", only: [:index, :feed]
  def index
    @cards = Card.all
  end

  def feed
    if logged?
      @cards = current_user.feed
      render "index"
    else
      redirect_to login_path
    end
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
  end
end
