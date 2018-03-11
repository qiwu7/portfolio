class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.text :title, null: false
      t.integer :percent_utilized, null: false

      t.timestamps
    end
  end
end
