class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
  end
  
    create_table :posts do |t|
      t.belongs_to :users, index: true
      t.string :title
      t.string :body

      t.timestamps null: false
    end
  end
end
