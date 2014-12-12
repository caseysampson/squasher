class Player < ActiveRecord::Base
  has_many :matches, through: :players_matches
end
