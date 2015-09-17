class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers force: :cascade do |t|
      t.string :text
      t.references :question

      t.timestamps null: false
    end
  end
end