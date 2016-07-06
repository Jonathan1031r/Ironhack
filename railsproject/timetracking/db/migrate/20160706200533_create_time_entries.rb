class CreateTimeEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :time_entries do |t|
    	t.string :name
    	t.datetime :date
    	t.string :comments
    	t.integer :project_id
    	t.integer :hours
    	t.integer :minutes


      t.timestamps
    end
  end
end
