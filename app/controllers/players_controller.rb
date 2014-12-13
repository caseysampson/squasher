class PlayersController < ApplicationController

  def index
    @players = Player.all.search_results(params)
  end
  
end