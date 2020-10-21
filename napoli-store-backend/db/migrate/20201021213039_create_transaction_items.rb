class CreateTransactionItems < ActiveRecord::Migration[6.0]
  def change
    create_table :transaction_items do |t|
      t.belongs_to :transaction, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
