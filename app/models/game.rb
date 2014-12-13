class Game < ActiveRecord::Base
  has_many :rallies
  belongs_to :match

  def points_for_player_at_rally(player, rally)
    #find all rallies before and including the passed rally.
    #join those rallies with the player object, for rallies with that winner
    #sum the rallies with result=point
    rallies.where('winner_id = ? AND created_at <= ? AND result = ?', 
      player.id, rally.created_at, Rally.results[:point]).count()
  end
  
end
