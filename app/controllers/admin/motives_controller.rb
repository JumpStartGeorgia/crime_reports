class Admin::MotivesController < ApplicationController
  before_filter :authenticate_user!
  before_filter do |controller_instance|
    controller_instance.send(:valid_role?, User::ROLES[:admin])
  end

  # GET /motives
  # GET /motives.json
  def index
    @motives = Motive.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @motives }
    end
  end

  # GET /motives/1
  # GET /motives/1.json
  def show
    @motive = Motive.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @motive }
    end
  end

  # GET /motives/new
  # GET /motives/new.json
  def new
    @motive = Motive.new

    I18n.available_locales.each do |locale|
			@motive.motive_translations.build(:locale => locale.to_s)
		end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @motive }
    end
  end

  # GET /motives/1/edit
  def edit
    @motive = Motive.find(params[:id])
  end

  # POST /motives
  # POST /motives.json
  def create
    @motive = Motive.new(params[:motive])

    add_missing_translation_content(@motive.motive_translations)

    respond_to do |format|
      if @motive.save
        format.html { redirect_to admin_motives_url, notice: t('app.msgs.success_created', :obj => t('activerecord.models.motive')) }
        format.json { render json: @motive, status: :created, location: @motive }
      else
        format.html { render action: "new" }
        format.json { render json: @motive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /motives/1
  # PUT /motives/1.json
  def update
    @motive = Motive.find(params[:id])

    @motive.assign_attributes(params[:motive])

    add_missing_translation_content(@motive.motive_translations)

    respond_to do |format|
      if @motive.update_attributes(params[:motive])
        format.html { redirect_to admin_motive_path(@motive), notice: t('app.msgs.success_updated', :obj => t('activerecord.models.motive')) }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @motive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /motives/1
  # DELETE /motives/1.json
  def destroy
    @motive = Motive.find(params[:id])
    @motive.destroy

    respond_to do |format|
      format.html { redirect_to admin_motives_url }
      format.json { head :no_content }
    end
  end
end
