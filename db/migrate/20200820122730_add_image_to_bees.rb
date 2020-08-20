class AddImageToBees < ActiveRecord::Migration[6.0]
  def change
    add_column :bees, :image, :string
  end
end
