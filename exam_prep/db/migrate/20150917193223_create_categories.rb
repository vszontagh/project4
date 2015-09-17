class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories force: :cascade do |t|
      t.string :category

      t.timestamps null: false
    end
  end
end
