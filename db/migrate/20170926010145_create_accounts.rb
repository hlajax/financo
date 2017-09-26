class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :name, limit: 45
      t.float :opening_balance
      t.float :current_balance
      t.string :additional_information
      t.references :currency, foreign_key: true

      t.timestamps
    end
  end
end
