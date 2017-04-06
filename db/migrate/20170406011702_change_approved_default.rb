class ChangeApprovedDefault < ActiveRecord::Migration[5.0]
  def change
    change_column_default :comments, :approved, false
  end
end
