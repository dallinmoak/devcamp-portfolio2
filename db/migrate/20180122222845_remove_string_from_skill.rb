class RemoveStringFromSkill < ActiveRecord::Migration[5.1]
  def change
    remove_column :skills, :string, :string
  end
end
