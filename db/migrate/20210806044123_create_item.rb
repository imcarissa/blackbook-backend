class CreateItem < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :wishlist_id
      t.string :name
      t.string :content

      t.timestamps
    end
  end
end
