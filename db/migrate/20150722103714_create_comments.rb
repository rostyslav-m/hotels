class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text    :msg,  null: false
      t.integer :rate, null: false
      t.references :hotel, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
