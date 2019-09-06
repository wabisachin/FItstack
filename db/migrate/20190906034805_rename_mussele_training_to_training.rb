class RenameMusseleTrainingToTraining < ActiveRecord::Migration[5.2]
  def change
    rename_table :mustle_trainings, :trainings
  end
end
