class CreateFromAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :from_accounts do |t|
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
