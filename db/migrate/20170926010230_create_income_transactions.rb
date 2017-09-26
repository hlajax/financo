class CreateIncomeTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :income_transactions do |t|
      t.references :account, foreign_key: true
      t.float :amount
      t.references :currency, foreign_key: true
      t.text :description
      t.references :payee, foreign_key: true
      t.references :income_category, foreign_key: true
      t.datetime :datetime
      t.boolean :done

      t.timestamps
    end
  end
end
