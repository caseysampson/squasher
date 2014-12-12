class GamesController < ApplicationController

  def create
      match = Match.find(params[:match_id])
     @game = match.game.create
    redirect_to match_game_url(@game)
  end

  def show
  end
end
