class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :f_name
      t.string :l_name
      t.string :email
      t.integer :phone
      t.integer :user_id

      t.timestamps
    end
  end
end
