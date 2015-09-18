class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.integer :correct_answer_id
      t.references :category
      t.references :lesson 

      t.timestamps null: false
    end
  end
end
