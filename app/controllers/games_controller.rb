class GamesController < ApplicationController
  before_filter :get_match

  def create
    @game = @match.games.create
    puts "GAMES CREATE"
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
    # puts "GAMES SHOW", params[:match_id], params[:id]
    @rallies = Rally.where(game_id: params[:id])
    
    player_1_total = 0
    player_2_total = 0

    @rallies.each do |rally|
      if rally.winner_id == 1 # remove hard-coded playerID
        player_1_total += 1
      elsif rally.winner_id == 2 # remove hard-coded playerID
        player_2_total += 1
      end

      rally.player_1_score = player_1_total
      rally.player_2_score = player_2_total

    end

  end

private
  def get_match
    @match = Match.find(params[:match_id])
  end

end
