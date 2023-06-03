class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :slug
      t.float :price
      t.float :discount
      t.text :description
      t.boolean :featured
      t.string :status

      t.timestamps
    end
  end
end
