class AddRb29ToTest < ActiveRecord::Migration
  def change
	add_column :tests, :rawbal29, :string
  end
end
