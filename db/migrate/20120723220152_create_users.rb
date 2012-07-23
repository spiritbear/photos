class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name      
      t.string :email, :null => false      
      t.string :crypted_password, :null => false
      t.string :password_salt, :null => false
      t.string :persistence_token, :null => false
      t.string :single_access_token, :null => false
      t.string :perishable_token
      t.integer :login_count, :null => false, :default => 0      
      t.timestamps
    end
  end
end
