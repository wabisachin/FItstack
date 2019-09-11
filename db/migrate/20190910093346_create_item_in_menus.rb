class CreateItemInMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :item_in_menus do |t|
      t.integer :training_id
      t.integer :menu_id
      t.timestamps
    end
  end
end
