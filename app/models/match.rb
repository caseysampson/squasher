class Match < ActiveRecord::Base
  has_many :games
  has_many :participations

  has_many :rallies, through: :games
  has_many :players, through: :participations

  def rest?
    #if all games are done, return false
    #if game in progress, return false
  end
  

end
