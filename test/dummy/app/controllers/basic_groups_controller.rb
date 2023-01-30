class BasicGroupsController < ApplicationController
  before_action :set_basic_group, only: %i[ show edit update destroy ]

  # GET /basic_groups
  def index
    @basic_groups = BasicGroup.all
  end

  # GET /basic_groups/1
  def show
  end

  # GET /basic_groups/new
  def new
    @basic_group = BasicGroup.new
  end

  # GET /basic_groups/1/edit
  def edit
  end

  # POST /basic_groups
  def create
    @basic_group = BasicGroup.new(basic_group_params)

    if @basic_group.save
      redirect_to @basic_group, notice: "Basic group was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /basic_groups/1
  def update
    if @basic_group.update(basic_group_params)
      redirect_to @basic_group, notice: "Basic group was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /basic_groups/1
  def destroy
    @basic_group.destroy
    redirect_to basic_groups_url, notice: "Basic group was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basic_group
      @basic_group = BasicGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def basic_group_params
      params.fetch(:basic_group, {})
    end
end
