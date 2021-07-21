class AddColumnToGroupsTable < ActiveRecord::Migration[6.1]
  def change
    add_column :groups, :img_url, :string
  end
end
