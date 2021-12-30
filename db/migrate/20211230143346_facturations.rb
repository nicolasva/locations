class Facturations < ActiveRecord::Migration[7.0]
  def change
    create_table :facturations do |t|
      t.string :firstname, limit: 30, null: false
      t.string :lastname, limit: 30, null: false
      t.string :email, limit: 50, null: false, index: true
      t.string :phonenumber, null: false
      t.string :address, limit: 150
      t.string :town, limit: 50
      t.string :zipcode, limit: 10
      t.string :street_number
      t.float :latitude
      t.float :longitude
      t.string :country_code
      t.boolean :default, default: false, null: false
      t.references :user, foreign_key: true, null: false, index: true
    end
  end
end
