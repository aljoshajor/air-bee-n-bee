class AddAttributeToBees < ActiveRecord::Migration[6.0]
  def change
  	add_column :bees, :attributes, :string
  end
end
