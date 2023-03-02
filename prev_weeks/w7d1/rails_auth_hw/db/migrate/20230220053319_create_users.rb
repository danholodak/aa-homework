class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username, index: true, unique: true
      t.string :password_digest, index: true, unique: true
      t.string :session_token, index: true, unique: true

      t.timestamps
    end
  end
end
