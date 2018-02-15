class GameController < ApplicationController
  def index
    @deck = Deck.new
  end
end
