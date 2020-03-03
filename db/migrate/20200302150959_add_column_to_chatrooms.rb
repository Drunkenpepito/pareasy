class AddColumnToChatrooms < ActiveRecord::Migration[6.0]
  def change

    add_reference :chatrooms, :bet_room, foreign_key: true
  end
end
