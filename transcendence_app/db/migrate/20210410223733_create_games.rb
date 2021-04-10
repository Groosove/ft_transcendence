class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.integer :user_id_creator
      t.integer :user_id_player
      t.integer :points_creator
      t.integer :points_player
      t.integer :delta_rating_creator
      t.integer :delta_rating_player

      t.timestamps
    end
  end
end
