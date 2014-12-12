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

    create_table :rallies do |t|
      t.integer :game_id
      t.integer :player1_score
      t.string :player1_serve_side
      t.integer :player2_score
      t.string :player2_serve_side
      t.string :event_calls
      t.timestamps
    end

    create_table :players do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.timestamps
    end

    create_table :players_matches do |t|
      t.integer :player_id
      t.integer :match_id
      t.timestamps
    end

  end
end
