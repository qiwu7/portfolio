class RemoveNullConstraintOnSkills < ActiveRecord::Migration[5.1]
  def change
    change_column_null :skills, :title, true
    change_column_null :skills, :percent_utilized, true
    change_column_null :projects, :title, true
  end
end
