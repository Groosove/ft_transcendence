class CreateGuilds < ActiveRecord::Migration[6.1]
  def change
    create_table :guilds do |t|
      t.string :guild_name
      t.string :guild_anagram
      t.integer :giuld_rating
      t.string :guild_avatar
      t.text :guild_description

      t.timestamps
    end
  end
end
