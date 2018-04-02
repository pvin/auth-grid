class CreateUsersRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :users_roles do |t|
      t.integer :user_id
      t.integer :role_id

      t.timestamps
    end
  end
end
