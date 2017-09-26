class CreateCurrencies < ActiveRecord::Migration[5.1]
  def change
    create_table :currencies do |t|
      t.string :name, limit: 45
      t.string :code, limit: 4
      t.string :sign, limit: 8

      t.timestamps
    end
  end
end
