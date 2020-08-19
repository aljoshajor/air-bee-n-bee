class RemoveAttributesFromBees < ActiveRecord::Migration[6.0]
  def change
  	remove_column :bees, :attributes 
  	add_column :bees, :features, :string
  end
end
