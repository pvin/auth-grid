class CreateAccessRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :access_roles do |t|
      t.integer :role_id
      t.integer :access_id
      t.integer :element_id

      t.timestamps
    end
  end
end
