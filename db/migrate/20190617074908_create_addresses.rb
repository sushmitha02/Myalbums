class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :address_line_1
      t.string :city
      t.string :state
      t.integer :pincode

      t.timestamps
    end
  end
end
