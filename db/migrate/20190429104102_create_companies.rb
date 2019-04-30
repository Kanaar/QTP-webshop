class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.jsonb :corr_address
      t.string :vat_number
      t.jsonb :bank_details

      t.timestamps
    end
  end
end
