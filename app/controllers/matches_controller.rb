class MatchesController < ApplicationController

  def index
  end

  def create  
    @match = Match.create
    redirect_to match_url(@match)
  end

  def warmup
  end

  def show
    
  end


end
