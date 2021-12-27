class Apartments < ActiveRecord::Migration[7.0]
  def change
    create_table :apartments do |t|
      t.string :title, null: false
      t.references :home, foreign_key: true, null: false, index: true
      t.timestamps
    end
  end
end
