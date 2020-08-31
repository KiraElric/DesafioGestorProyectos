class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name_project
      t.text :description
      t.date :date_start
      t.date :date_finish
      t.string :state

      t.timestamps
    end
  end
end
