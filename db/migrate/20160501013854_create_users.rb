class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :latest_ip_address

      t.timestamps null: false
    end
  end
end
