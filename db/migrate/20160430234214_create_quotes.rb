class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :author, null: false
      t.text :text, null: false
      t.integer :year

      t.timestamps null: false
    end
  end
end
