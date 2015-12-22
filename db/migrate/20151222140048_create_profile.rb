class CreateProfile < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :adress
      t.integer :user_id
    end
  end
end
