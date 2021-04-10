class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user_nickname
      t.string :user_emal
      t.string :user_pass
      t.string :user_role
      t.string :user_photo
      t.integer :user_rating
      t.string :intra_token
      t.integer :google_token

      t.timestamps
    end
  end
end
