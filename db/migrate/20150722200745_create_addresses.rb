class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :country, null: false
      t.string :state
      t.string :city,    null: false
      t.string :street,  null: false
      t.references :hotel, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
