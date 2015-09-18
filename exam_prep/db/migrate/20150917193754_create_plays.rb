class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.references :user
      t.integer :num_questions
      t.integer :correct
      t.datetime :date

      t.timestamps null: false
    end
  end
end
