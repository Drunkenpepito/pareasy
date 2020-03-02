class AddColumnToChatrooms < ActiveRecord::Migration[6.0]
  def change
    remove_column :chatrooms, :bet_room_id
    add_reference :chatrooms, :bet_room, foreign_key: true
  end
end
