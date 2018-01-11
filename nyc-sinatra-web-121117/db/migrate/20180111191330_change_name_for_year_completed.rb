class ChangeNameForYearCompleted < ActiveRecord::Migration[5.1]
  def change
    rename_column :landmarks, :year_comleted, :year_completed
  end
end
