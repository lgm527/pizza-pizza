class CreatePizzaToppings < ActiveRecord::Migration[5.2]
  def change
    create_table :pizza_toppings do |t|
      t.belongs_to :pizza, foreign_key: true
      t.belongs_to :topping, foreign_key: true

      t.timestamps
    end
  end
end
