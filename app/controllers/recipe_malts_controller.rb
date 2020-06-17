class RecipeMaltsController < ApplicationController
  before_action :set_recipe

  def index
    @recipe_malts = @recipe.recipe_malts
  end

  def show
    @recipe_malt = @recipe.recipe_malts.where(id: params[:id]).take
  end

  def new
    @recipe_malt = @recipe.recipe_malts.build
  end

  def edit
    @recipe_malt = @recipe.recipe_malts.where(id: params[:id]).take
  end

  def create
    @recipe_malt = @recipe.recipe_malts.build(recipe_malt_params)

    respond_to do |format|
      if @recipe_malt.save
        format.html { redirect_to @recipe_malt, notice: 'Recipe Malt was successfully created.' }
        format.json { render @recipe_malt  }
      else
        Rails.logger.info @recipe_malt.errors.inspect
        format.html { render :new }
        format.json { render json: @recipe_malt.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @recipe_malt = @recipe.recipe_malts.where(id: params[:id]).take
    respond_to do |format|
      if @recipe_malt.update(recipe_malt_params)
        format.html { redirect_to @recipe_malt, notice: 'Recipe Malt was successfully updated.' }
        format.json { render @recipe_malt }
      else
        format.html { render :edit }
        format.json { render json: @recipe_malt.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_recipe
      @recipe = Recipe.find(params[:recipe_id])
    end

    def recipe_malt_params
      params.require(:recipe_malt).permit(:malt_id, :recipe_id, :amount, :unit)
    end
end
