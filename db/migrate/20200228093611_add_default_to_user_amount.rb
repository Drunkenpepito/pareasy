class AddDefaultToUserAmount < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :amount_cents, :integer, default: 0
  end
end
