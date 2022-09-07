class CreateModels < ActiveRecord::Migration[6.1]
    def change
      create_table :models do |t|
        t.string :title
        t.string :thumbnail
        t.string :short_description
        t.string :release_date
        t.string :city
        t.timestamps
      end
    end
  end