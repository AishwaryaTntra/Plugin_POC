# frozen_string_literal: true

module Accounts
  # app > controllers > accounts > groups_controller
  class GroupsController < ApplicationController
    before_action :set_accounts_group, only: %i[show edit update destroy]

    # GET /accounts/groups
    def index
      @accounts_groups = Accounts::Group.all
    end

    # GET /accounts/groups/1
    def show; end

    # GET /accounts/groups/new
    def new
      @accounts_group = Accounts::Group.new
    end

    # GET /accounts/groups/1/edit
    def edit; end

    # POST /accounts/groups
    def create
      @accounts_group = Accounts::Group.new(accounts_group_params)

      if @accounts_group.save
        redirect_to @accounts_group, notice: 'Group was successfully created.'
      else
        render :new, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /accounts/groups/1
    def update
      if @accounts_group.update(accounts_group_params)
        redirect_to @accounts_group, notice: 'Group was successfully updated.'
      else
        render :edit, status: :unprocessable_entity
      end
    end

    # DELETE /accounts/groups/1
    def destroy
      @accounts_group.destroy
      redirect_to accounts_groups_url, notice: 'Group was successfully destroyed.'
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_accounts_group
      @accounts_group = Accounts::Group.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def accounts_group_params
      params.require(:accounts_group).permit(:name, :description)
    end
  end
end
