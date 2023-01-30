class SubGroupsController < ApplicationController
  before_action :set_sub_group, only: %i[ show edit update destroy ]

  # GET /sub_groups
  def index
    @sub_groups = SubGroup.all
  end

  # GET /sub_groups/1
  def show
  end

  # GET /sub_groups/new
  def new
    @sub_group = SubGroup.new
  end

  # GET /sub_groups/1/edit
  def edit
  end

  # POST /sub_groups
  def create
    @sub_group = SubGroup.new(sub_group_params)

    if @sub_group.save
      redirect_to @sub_group, notice: "Sub group was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sub_groups/1
  def update
    if @sub_group.update(sub_group_params)
      redirect_to @sub_group, notice: "Sub group was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /sub_groups/1
  def destroy
    @sub_group.destroy
    redirect_to sub_groups_url, notice: "Sub group was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_group
      @sub_group = SubGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sub_group_params
      params.fetch(:sub_group, {})
    end
end
