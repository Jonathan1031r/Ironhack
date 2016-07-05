class AddDescriptionToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :desscription, :text
  end
end
