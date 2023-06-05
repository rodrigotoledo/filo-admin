class AddAttrsToProducts < ActiveRecord::Migration[7.0]
  def change
    change_table(:products) do |t|
      t.references :category
      t.string :variation
    end
  end
end
