class Clients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.integer :gender, null: false
      t.string :firstname, limit: 30, null: false
      t.string :lastname, limit: 30, null: false
      t.string :email, limit: 50, null: false
      t.string :phonenumber, null: false
      t.references :user, foreign_key: true, null: false, index: true
      t.timestamps
    end
  end
end
