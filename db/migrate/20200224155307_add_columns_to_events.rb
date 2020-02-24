class AddColumnsToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :bet_room_id, :integer
    add column :events, :sport, :string
    add_column :events, :game, :string
    add_column :events, :game_start_at, :date
    add_column :events, :description, :text
  end
end

