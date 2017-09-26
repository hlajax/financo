class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :name, limit: 45
      t.decimal :opening_balance, precision: 10, scale: 2, default: 0.00
      t.decimal :current_balance, precision: 10, scale: 2, default: 0.00
      t.string :additional_information
      t.references :currency, foreign_key: true

      t.timestamps
    end
  end
end
