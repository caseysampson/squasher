class Game < ActiveRecord::Base
  has_many :rallies
  belongs_to :matches
end
