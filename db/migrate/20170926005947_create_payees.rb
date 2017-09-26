class CreatePayees < ActiveRecord::Migration[5.1]
  def change
    create_table :payees do |t|
      t.string :name, limit: 45

      t.timestamps
    end
  end
end
