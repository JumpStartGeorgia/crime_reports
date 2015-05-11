class Admin::EmploymentStatusesController < ApplicationController
  before_filter :authenticate_user!
  before_filter do |controller_instance|
    controller_instance.send(:valid_role?, User::ROLES[:admin])
  end

  # GET /employment_statuses
  # GET /employment_statuses.json
  def index
    @employment_statuses = EmploymentStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @employment_statuses }
    end
  end

  # GET /employment_statuses/1
  # GET /employment_statuses/1.json
  def show
    @employment_status = EmploymentStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @employment_status }
    end
  end

  # GET /employment_statuses/new
  # GET /employment_statuses/new.json
  def new
    @employment_status = EmploymentStatus.new

    I18n.available_locales.each do |locale|
			@employment_status.employment_status_translations.build(:locale => locale.to_s)
		end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @employment_status }
    end
  end

  # GET /employment_statuses/1/edit
  def edit
    @employment_status = EmploymentStatus.find(params[:id])
  end

  # POST /employment_statuses
  # POST /employment_statuses.json
  def create
    @employment_status = EmploymentStatus.new(params[:employment_status])

    respond_to do |format|
      if @employment_status.save
        format.html { redirect_to admin_employment_statuses_url, notice: t('app.msgs.success_created', :obj => t('activerecord.models.employment_status')) }
        format.json { render json: @employment_status, status: :created, location: @employment_status }
      else
        format.html { render action: "new" }
        format.json { render json: @employment_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /employment_statuses/1
  # PUT /employment_statuses/1.json
  def update
    @employment_status = EmploymentStatus.find(params[:id])

    @employment_status.assign_attributes(params[:employment_status])

    add_missing_translation_content(@employment_status.employment_status_translations)

    respond_to do |format|
      if @employment_status.update_attributes(params[:employment_status])
        format.html { redirect_to admin_employment_status_path(@employment_status), notice: t('app.msgs.success_updated', :obj => t('activerecord.models.employment_status')) }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @employment_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employment_statuses/1
  # DELETE /employment_statuses/1.json
  def destroy
    @employment_status = EmploymentStatus.find(params[:id])
    @employment_status.destroy

    respond_to do |format|
      format.html { redirect_to admin_employment_statuses_url }
      format.json { head :no_content }
    end
  end
end
