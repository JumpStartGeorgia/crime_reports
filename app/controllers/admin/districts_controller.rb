class Admin::DistrictsController < ApplicationController
  before_filter :authenticate_user!
  before_filter do |controller_instance|
    controller_instance.send(:valid_role?, User::ROLES[:admin])
  end

  # GET /districts
  # GET /districts.json
  def index
    @districts = District.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @districts }
    end
  end

  # GET /districts/1
  # GET /districts/1.json
  def show
    @district = District.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @district }
    end
  end

  # GET /districts/new
  # GET /districts/new.json
  def new
    @district = District.new

    I18n.available_locales.each do |locale|
			@district.district_translations.build(:locale => locale.to_s)
		end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @district }
    end
  end

  # GET /districts/1/edit
  def edit
    @district = District.find(params[:id])
  end

  # POST /districts
  # POST /districts.json
  def create
    @district = District.new(params[:district])

    add_missing_translation_content(@district.district_translations)

    respond_to do |format|
      if @district.save
        format.html { redirect_to admin_districts_url, notice: t('app.msgs.success_created', :obj => t('activerecord.models.district')) }
        format.json { render json: @district, status: :created, location: @district }
      else
        format.html { render action: "new" }
        format.json { render json: @district.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /districts/1
  # PUT /districts/1.json
  def update
    @district = District.find(params[:id])

    @district.assign_attributes(params[:district])

    add_missing_translation_content(@district.district_translations)

    respond_to do |format|
      if @district.update_attributes(params[:district])
        format.html { redirect_to admin_district_path(@district), notice: t('app.msgs.success_updated', :obj => t('activerecord.models.district')) }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @district.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /districts/1
  # DELETE /districts/1.json
  def destroy
    @district = District.find(params[:id])
    @district.destroy

    respond_to do |format|
      format.html { redirect_to admin_districts_url }
      format.json { head :no_content }
    end
  end
end
