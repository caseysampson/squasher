class Match < ActiveRecord::Base
  has_many :games
  has_many :rallies, through: :games
  has_many :players, through: :players_matches

end
