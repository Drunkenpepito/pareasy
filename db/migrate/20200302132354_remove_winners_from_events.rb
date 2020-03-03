class RemoveWinnersFromEvents < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :winners
  end
end
