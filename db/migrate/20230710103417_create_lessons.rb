class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :description
      t.string :category
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
