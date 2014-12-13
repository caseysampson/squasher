class Rally < ActiveRecord::Base
  attr_accessor :player_1_score, :player_2_score
  
  belongs_to :winner, :class_name => "Player"
  belongs_to :server, :class_name => "Player"
  belongs_to :game

  enum :served_from => [
    :left,
    :right
  ]

  enum :result => [
    :let,
    :point,
    :stroke,
    :conduct_warning,
    :conduct_game,
    :conduct_match
  ]
   
end
