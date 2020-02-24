class AddColumnsToBet < ActiveRecord::Migration[6.0]
  def change
    add_column :bet :result :boolean
    add_column :bet :amount_cents :integer
    add_column :bet :event_id :integer
    add_column :bet :user_id :integer
  end
end
