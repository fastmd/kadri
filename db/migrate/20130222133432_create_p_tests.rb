class CreatePTests < ActiveRecord::Migration
  def change
    create_table :p_tests do |t|
      t.text :test1
      t.text :test2
      t.text :test3
      t.text :test4
      t.text :test5
      t.text :test6
      t.text :test6
      t.text :test7
      t.text :test8
      t.text :test9
      t.references :monter

      t.timestamps
    end
    add_index :ptests, :monter_id
  end
end
