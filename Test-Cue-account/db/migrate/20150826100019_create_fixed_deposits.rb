class CreateFixedDeposits < ActiveRecord::Migration
  def change
    create_table :fixed_deposits do |t|
      t.integer :debit_account_number
      t.float :amount_deposit
      t.string :deposit_type
      t.integer :tenure_seposit_years
      t.integer :tenure_seposit_months
      t.integer :tenure_seposit_days
      t.string :pan
      t.string :maturity_proceeds
      t.string :mobile_number
      t.string :email
      t.integer :age

      t.timestamps null: false
    end
  end
end
