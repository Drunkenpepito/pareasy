class CreateParticipations < ActiveRecord::Migration[6.0]
  def change
    create_table :participations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :bet_room, null: false, foreign_key: true
      t.boolean :admin

      t.timestamps
    end
  end
end
