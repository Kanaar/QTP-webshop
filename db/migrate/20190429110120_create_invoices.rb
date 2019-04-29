class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.integer :amount
      t.jsonb :invoice_address
      t.string :filepath
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
