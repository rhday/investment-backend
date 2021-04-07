class CreateUser < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :name
      t.string :username
      t.string :password_digest
    end
  end
end
