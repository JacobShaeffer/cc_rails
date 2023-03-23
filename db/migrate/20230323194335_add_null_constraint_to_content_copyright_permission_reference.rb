class AddNullConstraintToContentCopyrightPermissionReference < ActiveRecord::Migration[7.0]
  def change
    change_column_null :contents, :copyright_permission_id, false, 1
  end
end
