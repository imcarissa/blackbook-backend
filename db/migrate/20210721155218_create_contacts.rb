class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.integer :group_id
      t.string :name
      t.string :email
      t.integer :phone_number
      t.string :notes

      t.timestamps
    end
  end
end
