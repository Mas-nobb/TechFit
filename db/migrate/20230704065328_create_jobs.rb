class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :name
      t.text :description
      t.text :suitable_for
      t.integer :average_salary

      t.timestamps
    end
  end
end
