class ChangeColumnToMessages < ActiveRecord::Migration[6.0]
  def change
    remove_column :messages, :bet_room_id
    add_reference :messages, :chatroom, foreign_key: true
  end
end
