class AddFinishToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :finish, :boolean, default:  false
  end
end
