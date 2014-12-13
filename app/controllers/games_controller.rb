class GamesController < ApplicationController
  before_filter :get_match

  def create
    @game = @match.games.create
    redirect_to match_game_url(params[:match_id],@game)
  end

  def show
    # redirect_to match_game_url(params[:match_id],@game,)

  #   @game = Game.find(params[:id])

  #   if @game.rest?
  #     render 'rest'
  #   elsif @game.in_progress?
  #     render 'progress'
  #   end
  end

private
  def get_match
    @match = Match.find(params[:match_id])
  end

end
