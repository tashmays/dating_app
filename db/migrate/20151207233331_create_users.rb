class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.text :bio
      t.integer :age
      t.string :gender
      t.text :city
      t.text :user_likes

      t.timestamps null: false
    end
  end
end
