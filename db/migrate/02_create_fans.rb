class CreateFans < ActiveRecord::Migration[6.1]
    def change
      create_table :fans do |t|
        t.string :username
        t.string :comment
        t.integer :model_id
        t.timestamps
      end
    end
  end