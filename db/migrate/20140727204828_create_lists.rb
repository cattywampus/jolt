class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name

      t.timestamps
    end

    add_column :tasks, :list_id, :integer

    add_index :tasks, :list_id
  end
end
