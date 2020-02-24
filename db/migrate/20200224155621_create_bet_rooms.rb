class CreateBetRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :bet_rooms do |t|
      t.string :name
      t.string :photo

      t.timestamps
    end
  end
end
