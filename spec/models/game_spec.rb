require 'rails_helper'

describe Game do

  before(:each) do
    @game = create(:game)
  end

  it 'should show the correct points for the given rally' do
    player = create(:player)
    rally1 = create(:rally, :game => @game, :winner => player, :result => :point)
    expect( @game.points_for_player_at_rally(player, rally1) ).to eq(1)
  end
  
  it 'should say its in play if its not complete' do

  end

end
