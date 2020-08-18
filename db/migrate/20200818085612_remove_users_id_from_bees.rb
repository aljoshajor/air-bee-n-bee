class RemoveUsersIdFromBees < ActiveRecord::Migration[6.0]
	def change
		drop_table :bookings
		drop_table :bees
		create_table :bees do |t|
			t.string :name
			t.text :description
			t.references :user, null: false, foreign_key: true

			t.timestamps
		end
		create_table :bookings do |t|
			t.references :user, null: false, foreign_key: true
			t.references :bee, null: false, foreign_key: true
			t.date :start_date
			t.date :end_date
			t.boolean :accepted

			t.timestamps
		end
	end
end