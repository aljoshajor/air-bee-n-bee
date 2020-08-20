class AddAddressToBees < ActiveRecord::Migration[6.0]
  def change
    add_column :bees, :address, :string
    add_column :bees, :latitude, :float
    add_column :bees, :longitude, :float
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
