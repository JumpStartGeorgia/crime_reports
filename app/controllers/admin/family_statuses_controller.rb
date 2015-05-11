class Admin::FamilyStatusesController < ApplicationController
  before_filter :authenticate_user!
  before_filter do |controller_instance|
    controller_instance.send(:valid_role?, User::ROLES[:admin])
  end

  # GET /family_statuses
  # GET /family_statuses.json
  def index
    @family_statuses = FamilyStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @family_statuses }
    end
  end

  # GET /family_statuses/1
  # GET /family_statuses/1.json
  def show
    @family_status = FamilyStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @family_status }
    end
  end

  # GET /family_statuses/new
  # GET /family_statuses/new.json
  def new
    @family_status = FamilyStatus.new

    I18n.available_locales.each do |locale|
			@family_status.family_status_translations.build(:locale => locale.to_s)
		end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @family_status }
    end
  end

  # GET /family_statuses/1/edit
  def edit
    @family_status = FamilyStatus.find(params[:id])
  end

  # POST /family_statuses
  # POST /family_statuses.json
  def create
    @family_status = FamilyStatus.new(params[:family_status])

    add_missing_translation_content(@family_status.family_status_translations)

    respond_to do |format|
      if @family_status.save
        format.html { redirect_to admin_family_statuses_url, notice: t('app.msgs.success_created', :obj => t('activerecord.models.family_status')) }
        format.json { render json: @family_status, status: :created, location: @family_status }
      else
        format.html { render action: "new" }
        format.json { render json: @family_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /family_statuses/1
  # PUT /family_statuses/1.json
  def update
    @family_status = FamilyStatus.find(params[:id])

    @family_status.assign_attributes(params[:family_status])

    add_missing_translation_content(@family_status.family_status_translations)

    respond_to do |format|
      if @family_status.update_attributes(params[:family_status])
        format.html { redirect_to admin_family_status_path(@family_status), notice: t('app.msgs.success_updated', :obj => t('activerecord.models.family_status')) }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @family_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /family_statuses/1
  # DELETE /family_statuses/1.json
  def destroy
    @family_status = FamilyStatus.find(params[:id])
    @family_status.destroy

    respond_to do |format|
      format.html { redirect_to admin_family_statuses_url }
      format.json { head :no_content }
    end
  end
end
