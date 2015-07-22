class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :state
      t.string :city
      t.string :street
      t.references :hotel, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
