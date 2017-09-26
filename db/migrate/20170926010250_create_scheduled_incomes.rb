class CreateScheduledIncomes < ActiveRecord::Migration[5.1]
  def change
    create_table :scheduled_incomes do |t|
      t.integer :repeat
      t.string :frequency
      t.integer :end
      t.references :income_transaction, foreign_key: true

      t.timestamps
    end
  end
end
