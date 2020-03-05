class AddBetTypeToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :bet_type, :string
  end
end
