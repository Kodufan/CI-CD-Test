class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :display_name
      t.string :email, null: false
      t.string :password_digest, null: false

      t.timestamps

      t.index :email, unique: true
    end
  end
end
