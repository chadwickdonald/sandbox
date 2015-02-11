class CreateScientists < ActiveRecord::Migration
  def change
    create_table :scientists do |t|
      t.string :name
      t.string :title
      t.references :lab, index: true

      t.timestamps null: false
    end
    add_foreign_key :scientists, :labs
  end
end
