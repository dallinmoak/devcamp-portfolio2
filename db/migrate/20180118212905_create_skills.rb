class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.string :title
      t.string :string
      t.integer :percent_used

      t.timestamps
    end
  end
end
