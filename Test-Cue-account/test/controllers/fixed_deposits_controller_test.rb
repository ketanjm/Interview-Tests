require 'test_helper'

class FixedDepositsControllerTest < ActionController::TestCase
  setup do
    @fixed_deposit = fixed_deposits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fixed_deposits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fixed_deposit" do
    assert_difference('FixedDeposit.count') do
      post :create, fixed_deposit: { age: @fixed_deposit.age, amount_deposit: @fixed_deposit.amount_deposit, debit_account_number: @fixed_deposit.debit_account_number, deposit_type: @fixed_deposit.deposit_type, email: @fixed_deposit.email, maturity_proceeds: @fixed_deposit.maturity_proceeds, mobile_number: @fixed_deposit.mobile_number, pan: @fixed_deposit.pan, tenure_seposit_days: @fixed_deposit.tenure_seposit_days, tenure_seposit_months: @fixed_deposit.tenure_seposit_months, tenure_seposit_years: @fixed_deposit.tenure_seposit_years }
    end

    assert_redirected_to fixed_deposit_path(assigns(:fixed_deposit))
  end

  test "should show fixed_deposit" do
    get :show, id: @fixed_deposit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fixed_deposit
    assert_response :success
  end

  test "should update fixed_deposit" do
    patch :update, id: @fixed_deposit, fixed_deposit: { age: @fixed_deposit.age, amount_deposit: @fixed_deposit.amount_deposit, debit_account_number: @fixed_deposit.debit_account_number, deposit_type: @fixed_deposit.deposit_type, email: @fixed_deposit.email, maturity_proceeds: @fixed_deposit.maturity_proceeds, mobile_number: @fixed_deposit.mobile_number, pan: @fixed_deposit.pan, tenure_seposit_days: @fixed_deposit.tenure_seposit_days, tenure_seposit_months: @fixed_deposit.tenure_seposit_months, tenure_seposit_years: @fixed_deposit.tenure_seposit_years }
    assert_redirected_to fixed_deposit_path(assigns(:fixed_deposit))
  end

  test "should destroy fixed_deposit" do
    assert_difference('FixedDeposit.count', -1) do
      delete :destroy, id: @fixed_deposit
    end

    assert_redirected_to fixed_deposits_path
  end
end
