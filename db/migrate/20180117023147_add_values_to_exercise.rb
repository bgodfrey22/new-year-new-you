class AddValuesToExercise < ActiveRecord::Migration[5.1]
  def change
    add_column :exercises, :equipment_type, :string
    add_column :exercises, :description, :text
  end
end
