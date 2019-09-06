class CreateMustleTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :mustle_trainings do |t|
      t.string :name
      t.integer :user_id
      t.integer :category_id
      t.integer :weight
      t.timestamps
    end
  end
end
