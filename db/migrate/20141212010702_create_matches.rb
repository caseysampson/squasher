class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps
    end

    create_table :games do |t|
      t.integer :match_id
      t.integer :game_number
      t.timestamps
    end

    # point: 1, L, 1, "point"
    # handout: 2, L, 1, "handout"


    # let: 
    # stroke:
    # handout:
    # no outcome yet: 

    create_table :rallies do |t|
      t.integer :game_id
      t.integer :rally_number
      t.string :server_id, null: false
      t.string :served_from, length: 1, null: false # "L" or "R"
      t.integer :winner_id # only if it's a point or a stroke (nullable if no outcome or let)
      t.string :result # "point", "let" or "stroke" (or nil if in progress)
      # t.integer :player1_score
      # t.string :player1_serve_side
      # t.integer :player2_score
      # t.string :player2_serve_side
      # t.string :event_calls
      t.timestamps
    end

    create_table :players do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.timestamps
    end


  end
end
