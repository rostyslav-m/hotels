class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :title,  null: false
      t.integer :stars, null: false
      t.boolean :breakfast
      t.text :description
      t.string :image_url
      t.decimal :price

      t.timestamps null: false
    end
  end
end
