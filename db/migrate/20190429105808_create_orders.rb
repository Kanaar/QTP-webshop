class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :number
      t.string :status
      t.jsonb :delivery_address
      t.jsonb :invoice_address
      t.references :customer, foreign_key: true

      t.timestamps
    end
    add_index :orders, :number, unique: true
  end
end
