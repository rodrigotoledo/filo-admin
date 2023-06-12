class CreateProductRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :product_ratings do |t|
      t.references :product, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.float :rating

      t.timestamps
    end
  end
end
