class AddAuthorToEvents < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :author, foreign_key: { to_table: :users }, index: true
  end
end
