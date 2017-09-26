class CreateScheduledExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :scheduled_expenses do |t|
      t.integer :repeat
      t.string :frequency
      t.integer :end
      t.references :expense_transaction, foreign_key: true

      t.timestamps
    end
  end
end
