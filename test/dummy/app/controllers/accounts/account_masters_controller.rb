class Accounts::AccountMastersController < ApplicationController
  before_action :set_accounts_account_master, only: %i[ show edit update destroy ]

  # GET /accounts/account_masters
  def index
    @accounts_account_masters = Accounts::AccountMaster.all
  end

  # GET /accounts/account_masters/1
  def show
  end

  # GET /accounts/account_masters/new
  def new
    @accounts_account_master = Accounts::AccountMaster.new
  end

  # GET /accounts/account_masters/1/edit
  def edit
  end

  # POST /accounts/account_masters
  def create
    @accounts_account_master = Accounts::AccountMaster.new(accounts_account_master_params)

    if @accounts_account_master.save
      redirect_to @accounts_account_master, notice: "Account master was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /accounts/account_masters/1
  def update
    if @accounts_account_master.update(accounts_account_master_params)
      redirect_to @accounts_account_master, notice: "Account master was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /accounts/account_masters/1
  def destroy
    @accounts_account_master.destroy
    redirect_to accounts_account_masters_url, notice: "Account master was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accounts_account_master
      @accounts_account_master = Accounts::AccountMaster.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def accounts_account_master_params
      params.require(:accounts_account_master).permit(:name, :balance)
    end
end
