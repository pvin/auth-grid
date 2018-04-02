class DeleteUsersRolesTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :users_roles
  end
end
