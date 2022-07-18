class CreateSandwiches < ActiveRecord::Migration[7.0]
  def change
    create_table :sandwiches do |t|
      t.string :name
      t.integer :price
      t.boolean :meal_of_week
      t.belongs_to :user, null:false, foreign_key: true
      
      t.timestamps
    end
  end
end
