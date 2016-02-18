class AddNameToSandwich < ActiveRecord::Migration
  def change
    add_column :sandwiches, :bread_type, :string
  end
end
