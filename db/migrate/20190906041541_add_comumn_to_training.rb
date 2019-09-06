class AddComumnToTraining < ActiveRecord::Migration[5.2]
  def change
    add_column :trainings, :times, :integer
  end
end
