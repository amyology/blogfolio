class AddUrlToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :url, :string
    add_column :comments, :approved, :boolean
  end
end
