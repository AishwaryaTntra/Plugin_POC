class Accounts::SubGroupsController < ApplicationController
  before_action :set_accounts_sub_group, only: %i[ show edit update destroy ]

  # GET /accounts/sub_groups
  def index
    @accounts_sub_groups = Accounts::SubGroup.all
  end

  # GET /accounts/sub_groups/1
  def show
  end

  # GET /accounts/sub_groups/new
  def new
    @accounts_sub_group = Accounts::SubGroup.new
  end

  # GET /accounts/sub_groups/1/edit
  def edit
  end

  # POST /accounts/sub_groups
  def create
    @accounts_sub_group = Accounts::SubGroup.new(accounts_sub_group_params)

    if @accounts_sub_group.save
      redirect_to @accounts_sub_group, notice: "Sub group was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /accounts/sub_groups/1
  def update
    if @accounts_sub_group.update(accounts_sub_group_params)
      redirect_to @accounts_sub_group, notice: "Sub group was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /accounts/sub_groups/1
  def destroy
    @accounts_sub_group.destroy
    redirect_to accounts_sub_groups_url, notice: "Sub group was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accounts_sub_group
      @accounts_sub_group = Accounts::SubGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def accounts_sub_group_params
      params.require(:accounts_sub_group).permit(:name, :basic_group_name)
    end
end
