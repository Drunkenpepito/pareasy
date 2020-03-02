class AddLeagueToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :league, :string
  end
end
