class CreateTransferTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transfer_transactions do |t|
      t.references :from_account, foreign_key: true
      t.references :to_account, foreign_key: true
      t.float :amount
      t.text :description
      t.references :currency, foreign_key: true
      t.datetime :datetime
      t.boolean :done

      t.timestamps
    end
  end
end
