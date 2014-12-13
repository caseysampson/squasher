class Player < ActiveRecord::Base
  has_many :participations
  has_many :matches, through: :participations

  scope :search_results, -> (params) do
    if params[:email].present?
      self.where("players.email LIKE ?", params[:email])
    end
  end
  
end
