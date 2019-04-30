class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :model
      t.text :specs
      t.string :image_url
      t.integer :price

      t.timestamps
    end
  end
end
