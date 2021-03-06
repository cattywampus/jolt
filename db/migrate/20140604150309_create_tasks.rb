class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :position
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
