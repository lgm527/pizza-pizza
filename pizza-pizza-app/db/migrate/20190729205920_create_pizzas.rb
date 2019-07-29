class CreatePizzas < ActiveRecord::Migration[5.2]
  def change
    create_table :pizzas do |t|
      t.integer :order_number
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
