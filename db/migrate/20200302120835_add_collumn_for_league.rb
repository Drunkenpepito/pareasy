class AddCollumnForLeague < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :thesportdb_league_id, :integer
    add_column :events, :thesportdb_event_id, :integer
  end
end
