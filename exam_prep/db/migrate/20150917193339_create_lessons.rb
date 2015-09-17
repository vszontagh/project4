class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons force: :cascade do |t|
      t.string :content
      t.references :category

      t.timestamps null: false
    end
  end
end
