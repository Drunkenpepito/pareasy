class AddAmountToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :amount_cents, :integer
  end
end
