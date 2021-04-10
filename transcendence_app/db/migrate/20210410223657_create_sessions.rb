class CreateSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.integer :user_session_id
      t.string :user_key
      t.datatime :user_time_accepting

      t.timestamps
    end
  end
end
