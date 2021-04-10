class CreateGuildMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :guild_members do |t|
      t.integer :guild_id
      t.integer :guild_member_id
      t.string :guild_member_role

      t.timestamps
    end
  end
end
