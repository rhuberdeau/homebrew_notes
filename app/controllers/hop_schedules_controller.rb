class HopSchedulesController < ApplicationController
  before_action :set_recipe

  def index
    @hop_schedules = @recipe.hop_schedules
  end

  def show
    @hop_schedule = @recipe.hop_schedules.where(id: params[:id]).take
  end

  def new
    @hop_schedule = @recipe.hop_schedules.build
  end

  def edit
    @hop_schedule = @recipe.hop_schedules.where(id: params[:id]).take
  end

  def create
    @hop_schedule = @recipe.hop_schedules.build(hop_schedule_params)

    respond_to do |format|
      if @hop_schedule.save
        format.html { redirect_to @hop_schedule, notice: 'Hop Schedule was successfully created.' }
        format.json { render @hop_schedule  }
      else
        Rails.logger.info @hop_schedule.errors.inspect
        format.html { render :new }
        format.json { render json: @hop_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @hop_schedule = @recipe.hop_schedules.where(id: params[:id]).take
    respond_to do |format|
      if @hop_schedule.update(hop_schedule_params)
        format.html { redirect_to @hop_schedule, notice: 'Hop Schedule was successfully updated.' }
        format.json { render @hop_schedule }
      else
        format.html { render :edit }
        format.json { render json: @hop_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_recipe
      @recipe = Recipe.find(params[:recipe_id])
    end

    def hop_schedule_params
      params.require(:hop_schedule).permit(:hop_id, :recipe_id, :amount, :at, :alpha_level, :unit)
    end
end
