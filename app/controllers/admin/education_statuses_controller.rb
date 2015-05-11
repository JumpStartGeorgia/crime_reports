class Admin::EducationStatusesController < ApplicationController
  before_filter :authenticate_user!
  before_filter do |controller_instance|
    controller_instance.send(:valid_role?, User::ROLES[:admin])
  end

  # GET /education_statuses
  # GET /education_statuses.json
  def index
    @education_statuses = EducationStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @education_statuses }
    end
  end

  # GET /education_statuses/1
  # GET /education_statuses/1.json
  def show
    @education_status = EducationStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @education_status }
    end
  end

  # GET /education_statuses/new
  # GET /education_statuses/new.json
  def new
    @education_status = EducationStatus.new

    I18n.available_locales.each do |locale|
			@education_status.education_status_translations.build(:locale => locale.to_s)
		end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @education_status }
    end
  end

  # GET /education_statuses/1/edit
  def edit
    @education_status = EducationStatus.find(params[:id])
  end

  # POST /education_statuses
  # POST /education_statuses.json
  def create
    @education_status = EducationStatus.new(params[:education_status])

    add_missing_translation_content(@education_status.education_status_translations)

    respond_to do |format|
      if @education_status.save
        format.html { redirect_to admin_education_statuses_url, notice: t('app.msgs.success_created', :obj => t('activerecord.models.education_status')) }
        format.json { render json: @education_status, status: :created, location: @education_status }
      else
        format.html { render action: "new" }
        format.json { render json: @education_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /education_statuses/1
  # PUT /education_statuses/1.json
  def update
    @education_status = EducationStatus.find(params[:id])

    @education_status.assign_attributes(params[:education_status])

    add_missing_translation_content(@education_status.education_status_translations)

    respond_to do |format|
      if @education_status.update_attributes(params[:education_status])
        format.html { redirect_to admin_education_status_path(@education_status), notice: t('app.msgs.success_updated', :obj => t('activerecord.models.education_status')) }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @education_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /education_statuses/1
  # DELETE /education_statuses/1.json
  def destroy
    @education_status = EducationStatus.find(params[:id])
    @education_status.destroy

    respond_to do |format|
      format.html { redirect_to admin_education_statuses_url }
      format.json { head :no_content }
    end
  end
end
