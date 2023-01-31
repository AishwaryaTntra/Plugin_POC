class Accounts::BasicGroupsController < ApplicationController
  before_action :set_accounts_basic_group, only: %i[ show edit update destroy ]

  # GET /accounts/basic_groups
  def index
    @accounts_basic_groups = Accounts::BasicGroup.all
  end

  # GET /accounts/basic_groups/1
  def show
  end

  # GET /accounts/basic_groups/new
  def new
    @accounts_basic_group = Accounts::BasicGroup.new
  end

  # GET /accounts/basic_groups/1/edit
  def edit
  end

  # POST /accounts/basic_groups
  def create
    @accounts_basic_group = Accounts::BasicGroup.new(accounts_basic_group_params)

    if @accounts_basic_group.save
      redirect_to @accounts_basic_group, notice: "Basic group was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /accounts/basic_groups/1
  def update
    if @accounts_basic_group.update(accounts_basic_group_params)
      redirect_to @accounts_basic_group, notice: "Basic group was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /accounts/basic_groups/1
  def destroy
    @accounts_basic_group.destroy
    redirect_to accounts_basic_groups_url, notice: "Basic group was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accounts_basic_group
      @accounts_basic_group = Accounts::BasicGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def accounts_basic_group_params
      params.require(:accounts_basic_group).permit(:name)
    end
end
