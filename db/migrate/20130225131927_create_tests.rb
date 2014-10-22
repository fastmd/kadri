class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :date
      t.text :test1
      t.references :monter

      t.timestamps
    end
    add_index :tests, :monter_id
  end
end
