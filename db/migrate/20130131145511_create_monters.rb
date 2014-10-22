class CreateMonters < ActiveRecord::Migration
  def change
    create_table :monters do |t|
      t.string :company
      t.string :branch
      t.string :name
      t.string :surname
      t.string :bdate
      t.string :dolj
      t.integer :staj

      t.timestamps
    end
  end
end
