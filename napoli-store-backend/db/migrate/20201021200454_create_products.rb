class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :photo
      t.decimal :price, precision: 8, scale: 2, default: 0
      t.string :description
      t.string :detail_1
      t.string :detail_2
      t.string :detail_3
      t.string :detail_4
      t.string :detail_5
      t.string :detail_6
      t.string :detail_7
      t.string :detail_8
      t.string :detail_9
      t.string :detail_10
      t.string :detail_11
      t.string :detail_12
      t.string :detail_13
      t.string :detail_14
      t.string :detail_15
      t.string :detail_16
      t.string :detail_17
      t.string :detail_18
      t.string :detail_19
      t.string :detail_20
      t.string :quantity_sm
      t.string :quantity_med
      t.string :quantity_large
      t.string :quantity_xl
      t.references :collection, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
