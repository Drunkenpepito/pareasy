class AddColumnsToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :betroom_id, :integer
    add_column :events, :sport, :string
    add_column :events, :game, :string
    add_column :events, :game_start_at, :date
    add_column :events, :description, :text
  end
end

