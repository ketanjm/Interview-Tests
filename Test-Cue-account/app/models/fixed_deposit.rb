class FixedDeposit < ActiveRecord::Base
  validates_presence_of :email, :debit_account_number, :maturity_proceeds, :mobile_number, :age #, :deposit_type
  validates :amount_deposit, presence: true, numericality: true
  validates :tenure_seposit_years, presence: true, numericality: true
  validates :tenure_seposit_months, presence: true, numericality: true
  validates :tenure_seposit_days, presence: true, numericality: true
  validates :age, presence: true, numericality: true		
end
