class AddDistritoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :distrito, :integer
  end
end
