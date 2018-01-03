class SwapOutRolesForTypesInUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :roles, :string
    remove_column :users, :type, :string
  end
end
