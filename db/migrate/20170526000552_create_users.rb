class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :firstname
      t.text :lastname
      t.text :username
      t.text :phone_number

      t.timestamps
    end
  end
end
