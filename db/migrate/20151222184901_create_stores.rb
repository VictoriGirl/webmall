class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :cathegory
      t.integer :profile_id
      t.string :speciality
      t.boolean :active
      t.integer :buying_count
    end
  end
end
