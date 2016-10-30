class AddSuperAdminToAdmins < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :superadmin, :boolean, default: false
  end
end
