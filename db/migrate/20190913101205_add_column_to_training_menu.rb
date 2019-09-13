class AddColumnToTrainingMenu < ActiveRecord::Migration[5.2]
  def change
    add_column :training_menus, :weight, :integer
    add_column :training_menus, :times, :integer
  end
end
