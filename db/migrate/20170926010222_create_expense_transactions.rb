class CreateExpenseTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :expense_transactions do |t|
      t.references :account, foreign_key: true
      t.decimal :amount, precision: 10, scale: 2, default: 0.00
      t.references :currency, foreign_key: true
      t.text :description
      t.references :payee, foreign_key: true
      t.references :expense_category, foreign_key: true
      t.datetime :datetime
      t.boolean :done, default: true

      t.timestamps
    end
  end
end
