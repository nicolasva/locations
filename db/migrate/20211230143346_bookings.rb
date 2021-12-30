class Bookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.datetime :starts_at, null: false
      t.datetime :ends_at, null: false
      t.integer :kind, null: false
      t.references :user, foreign_key: true, null: false, index: true
      t.references :apartment, foreign_key: true, null: false, index: true
      t.timestamps
    end
  end
end
