class CreateTimeEntries < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
      t.integer :developer_id
      t.integer :project_id
      t.decimal :duration
      t.date :worked_on

      t.timestamps null: false
    end
  end
end
