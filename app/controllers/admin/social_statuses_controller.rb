class Admin::SocialStatusesController < ApplicationController
  before_filter :authenticate_user!
  before_filter do |controller_instance|
    controller_instance.send(:valid_role?, User::ROLES[:admin])
  end

  # GET /social_statuses
  # GET /social_statuses.json
  def index
    @social_statuses = SocialStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @social_statuses }
    end
  end

  # GET /social_statuses/1
  # GET /social_statuses/1.json
  def show
    @social_status = SocialStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @social_status }
    end
  end

  # GET /social_statuses/new
  # GET /social_statuses/new.json
  def new
    @social_status = SocialStatus.new

    I18n.available_locales.each do |locale|
			@social_status.social_status_translations.build(:locale => locale.to_s)
		end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @social_status }
    end
  end

  # GET /social_statuses/1/edit
  def edit
    @social_status = SocialStatus.find(params[:id])
  end

  # POST /social_statuses
  # POST /social_statuses.json
  def create
    @social_status = SocialStatus.new(params[:social_status])

    add_missing_translation_content(@social_status.social_status_translations)

    respond_to do |format|
      if @social_status.save
        format.html { redirect_to admin_social_statuses_url, notice: t('app.msgs.success_created', :obj => t('activerecord.models.social_status')) }
        format.json { render json: @social_status, status: :created, location: @social_status
        }
      else
        format.html { render action: "new" }
        format.json { render json: @social_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /social_statuses/1
  # PUT /social_statuses/1.json
  def update
    @social_status = SocialStatus.find(params[:id])

    @social_status.assign_attributes(params[:social_status])

    add_missing_translation_content(@social_status.social_status_translations)

    respond_to do |format|
      if @social_status.update_attributes(params[:social_status])
        format.html { redirect_to admin_social_status_path(@social_status), notice: t('app.msgs.success_updated', :obj => t('activerecord.models.social_status')) }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @social_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /social_statuses/1
  # DELETE /social_statuses/1.json
  def destroy
    @social_status = SocialStatus.find(params[:id])
    @social_status.destroy

    respond_to do |format|
      format.html { redirect_to admin_social_statuses_url }
      format.json { head :no_content }
    end
  end
end
