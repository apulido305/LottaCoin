class AddColumnsToCoin < ActiveRecord::Migration[5.1]
  def change
    add_column :coins, :url, :string
    add_column :coins, :imageurl, :string
    add_column :coins, :coinname, :string
    add_column :coins, :fullname, :string
    add_column :coins, :totalcoinsupply, :string
  end
end
