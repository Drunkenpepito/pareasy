class AddWinnersToEvent < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :winners, :string , array: true
  end
end
