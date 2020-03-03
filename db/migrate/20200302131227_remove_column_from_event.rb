class RemoveColumnFromEvent < ActiveRecord::Migration[6.0]
  def change
    change_column :events, :winners, :string , array: true, default: []
  end
end
