class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users force: :cascade do |t|
      t.string :username
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
