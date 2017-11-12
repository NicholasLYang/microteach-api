class AddInputToExercise < ActiveRecord::Migration[5.1]
  def change
    add_column :exercises, :input, :text
  end
end
