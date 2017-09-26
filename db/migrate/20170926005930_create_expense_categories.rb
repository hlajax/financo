class CreateExpenseCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :expense_categories do |t|
      t.string :name
      t.integer :icon

      t.timestamps
    end
  end
end
