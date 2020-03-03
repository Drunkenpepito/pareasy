class AddWinnerTo < ActiveRecord::Migration[6.0]
  def change
    add_column :bets, :winner, :boolean , default: false
  end
end
