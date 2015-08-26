class FixedDepositsController < ApplicationController
  before_action :set_fixed_deposit, only: [:show, :edit, :update, :destroy]

  # GET /fixed_deposits
  # GET /fixed_deposits.json
  def index
    @fixed_deposits = FixedDeposit.all
  end

  # GET /fixed_deposits/1
  # GET /fixed_deposits/1.json
  def show
  end

  # GET /fixed_deposits/new
  def new
    @fixed_deposit = FixedDeposit.new
  end

  # GET /fixed_deposits/1/edit
  def edit
  end

  # POST /fixed_deposits
  # POST /fixed_deposits.json
  def create
    @fixed_deposit = FixedDeposit.new(fixed_deposit_params)

    respond_to do |format|
      if @fixed_deposit.save
        format.html { redirect_to @fixed_deposit, notice: 'Fixed deposit was successfully created.' }
        format.json { render :show, status: :created, location: @fixed_deposit }
      else
        format.html { render :new }
        format.json { render json: @fixed_deposit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fixed_deposits/1
  # PATCH/PUT /fixed_deposits/1.json
  def update
    respond_to do |format|
      if @fixed_deposit.update(fixed_deposit_params)
        format.html { redirect_to @fixed_deposit, notice: 'Fixed deposit was successfully updated.' }
        format.json { render :show, status: :ok, location: @fixed_deposit }
      else
        format.html { render :edit }
        format.json { render json: @fixed_deposit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fixed_deposits/1
  # DELETE /fixed_deposits/1.json
  def destroy
    @fixed_deposit.destroy
    respond_to do |format|
      format.html { redirect_to fixed_deposits_url, notice: 'Fixed deposit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fixed_deposit
      @fixed_deposit = FixedDeposit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fixed_deposit_params
      params.require(:fixed_deposit).permit(:debit_account_number, :amount_deposit, :deposit_type, :tenure_seposit_years, :tenure_seposit_months, :tenure_seposit_days, :pan, :maturity_proceeds, :mobile_number, :email, :age)
    end
end
