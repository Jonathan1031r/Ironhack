class CreateSandwhichIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :sandwhich_ingredients do |t|
      t.integer :sandwhich_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
