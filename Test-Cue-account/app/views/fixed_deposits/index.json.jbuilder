json.array!(@fixed_deposits) do |fixed_deposit|
  json.extract! fixed_deposit, :id, :debit_account_number, :amout_deposit, :deposit_type, :tenure_seposit_years, :tenure_seposit_months, :tenure_seposit_days, :pan, :maturity_proceeds, :mobile_number, :email, :age
  json.url fixed_deposit_url(fixed_deposit, format: :json)
end
