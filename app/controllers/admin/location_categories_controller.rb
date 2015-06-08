class Admin::LocationCategoriesController < ApplicationController
  before_filter :authenticate_user!
  before_filter do |controller_instance|
    controller_instance.send(:valid_role?, User::ROLES[:admin])
  end

  # GET /location_categories
  # GET /location_categories.json
  def index
    @location_categories = LocationCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @location_categories }
    end
  end

  # GET /location_categories/1
  # GET /location_categories/1.json
  def show
    @location_category = LocationCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @location_category }
    end
  end

  # GET /location_categories/new
  # GET /location_categories/new.json
  def new
    @location_category = LocationCategory.new

    I18n.available_locales.each do |locale|
			@location_category.location_category_translations.build(:locale => locale.to_s)
		end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @location_category }
    end
  end

  # GET /location_categories/1/edit
  def edit
    @location_category = LocationCategory.find(params[:id])
  end

  # POST /location_categories
  # POST /location_categories.json
  def create
    @location_category = LocationCategory.new(params[:location_category])

    add_missing_translation_content(@location_category.location_category_translations)

    respond_to do |format|
      if @location_category.save
        format.html { redirect_to admin_location_categories_url, notice: t('app.msgs.success_created', :obj => t('activerecord.models.location_category')) }
        format.json { render json: @location_category, status: :created, location: @location_category }
      else
        format.html { render action: "new" }
        format.json { render json: @location_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /location_categories/1
  # PUT /location_categories/1.json
  def update
    @location_category = LocationCategory.find(params[:id])

    @location_category.assign_attributes(params[:location_category])

    add_missing_translation_content(@location_category.location_category_translations)

    respond_to do |format|
      if @location_category.update_attributes(params[:location_category])
        format.html { redirect_to admin_location_category_path(@location_category), notice: t('app.msgs.success_updated', :obj => t('activerecord.models.location_category')) }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @location_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /location_categories/1
  # DELETE /location_categories/1.json
  def destroy
    @location_category = LocationCategory.find(params[:id])
    @location_category.destroy

    respond_to do |format|
      format.html { redirect_to admin_location_categories_url }
      format.json { head :no_content }
    end
  end
end
