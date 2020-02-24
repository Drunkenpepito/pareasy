class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :sport
      t.string :game
      t.datetime :game_start_at
      t.string :description
      t.references :bet_room, null: false, foreign_key: true
      t.timestamps
    end
  end
end
