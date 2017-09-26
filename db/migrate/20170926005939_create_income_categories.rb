class CreateIncomeCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :income_categories do |t|
      t.string :name, limit: 45
      t.integer :icon

      t.timestamps
    end
  end
end
