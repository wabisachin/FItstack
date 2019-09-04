class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :age, :integer
    add_column :users, :sex, :integer #男性=>0,女性=>1
    add_column :users, :message, :text
  end
end
