class ChangeRoleOnUserToInt < ActiveRecord::Migration[7.0]
  def up
    change_column :users, :role, :integer
  end

  def down
    change_column :users, :role, :string
  end
end
