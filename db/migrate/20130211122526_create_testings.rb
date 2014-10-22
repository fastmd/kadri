class CreateTestings < ActiveRecord::Migration
  def change
    create_table :testings do |t|
      t.text :test1
      t.text :test2
      t.text :test3
      t.text :test4
      t.text :tes5
      t.text :test6
      t.text :test7
      t.text :test8
      t.text :test9

      t.timestamps
    end
  end
end
