class AddRenameItemInMenu < ActiveRecord::Migration[5.2]
  def change
    rename_table :item_in_menus, :training_menus
  end
end
