class AddDistrictToDistricts < ActiveRecord::Migration[5.2]
  def change
    add_column :districts, :distrito, :integer
  end
end
