class AddTestsToTest < ActiveRecord::Migration
  def change
	add_column :tests, :test2, :string
	add_column :tests, :test3, :string
	add_column :tests, :test4, :string
	add_column :tests, :test5, :string
	add_column :tests, :test6, :string
	add_column :tests, :test7, :string
	add_column :tests, :test8, :string
	add_column :tests, :test9, :string
	
  end
end
