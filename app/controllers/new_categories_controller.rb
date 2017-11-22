class NewCategoriesController < ApplicationController
  before_action :set_new_category, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!


  # GET /new_categories
  # GET /new_categories.json
  def index
    @new_categories = NewCategory.all
  end

  # GET /new_categories/1
  # GET /new_categories/1.json
  def show
  end

  # GET /new_categories/new
  def new
    @new_category = NewCategory.new
  end

  # GET /new_categories/1/edit
  def edit
  end

  # POST /new_categories
  # POST /new_categories.json
  def create
    @new_category = NewCategory.new(new_category_params)

    respond_to do |format|
      if @new_category.save
        format.html { redirect_to @new_category, notice: 'New category was successfully created.' }
        format.json { render :show, status: :created, location: @new_category }
      else
        format.html { render :new }
        format.json { render json: @new_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_categories/1
  # PATCH/PUT /new_categories/1.json
  def update
    respond_to do |format|
      if @new_category.update(new_category_params)
        format.html { redirect_to @new_category, notice: 'New category was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_category }
      else
        format.html { render :edit }
        format.json { render json: @new_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_categories/1
  # DELETE /new_categories/1.json
  def destroy
    @new_category.destroy
    respond_to do |format|
      format.html { redirect_to new_categories_url, notice: 'New category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_category
      @new_category = NewCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_category_params
      params.require(:new_category).permit(:name, :description, :user_id)
    end
end
