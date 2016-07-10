class AddCommmetsToConcert < ActiveRecord::Migration[5.0]
  def change
    add_column :concerts, :comments, :text
  end
end
