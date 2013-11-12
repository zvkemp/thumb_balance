class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :amount
      t.string :place
      t.string :category
      t.timestamps
    end
  end
end
