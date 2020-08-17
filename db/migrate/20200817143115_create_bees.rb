class CreateBees < ActiveRecord::Migration[6.0]
  def change
    create_table :bees do |t|
      t.string :name
      t.text :description
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
