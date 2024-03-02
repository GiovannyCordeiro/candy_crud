class CreateCandies < ActiveRecord::Migration[7.1]
  def change
    create_table :candies do |t|
      t.text :name
      t.text :description
      t.integer :rate

      t.timestamps
    end
  end
end
