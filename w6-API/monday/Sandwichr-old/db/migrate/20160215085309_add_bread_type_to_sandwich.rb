class AddBreadTypeToSandwich < ActiveRecord::Migration
  def change
    add_column :sandwiches, :name, :string
  end
end
