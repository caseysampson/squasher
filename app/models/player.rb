class Player < ActiveRecord::Base
  has_many :participations
  has_many :matches, through: :participations
end
