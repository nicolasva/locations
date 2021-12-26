class Presentations < ActiveRecord::Migration[7.0]
  def change
    create_table :presentations do |t|
      t.text :content
      t.integer :morph_id, null: false
      t.string :morph_type, null: false
    end
  end
end
