class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :team, index: true
      t.string :name

      t.timestamps null: false
    end
    add_foreign_key :users, :teams
  end
end
