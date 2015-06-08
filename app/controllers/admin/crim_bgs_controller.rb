class Admin::CrimBgsController < ApplicationController
  before_filter :authenticate_user!
  before_filter do |controller_instance|
    controller_instance.send(:valid_role?, User::ROLES[:admin])
  end

  # GET /crim_bgs
  # GET /crim_bgs.json
  def index
    @crim_bgs = CrimBg.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @crim_bgs }
    end
  end

  # GET /crim_bgs/1
  # GET /crim_bgs/1.json
  def show
    @crim_bg = CrimBg.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @crim_bg }
    end
  end

  # GET /crim_bgs/new
  # GET /crim_bgs/new.json
  def new
    @crim_bg = CrimBg.new

    I18n.available_locales.each do |locale|
			@crim_bg.crim_bg_translations.build(:locale => locale.to_s)
		end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @crim_bg }
    end
  end

  # GET /crim_bgs/1/edit
  def edit
    @crim_bg = CrimBg.find(params[:id])
  end

  # POST /crim_bgs
  # POST /crim_bgs.json
  def create
    @crim_bg = CrimBg.new(params[:crim_bg])

    add_missing_translation_content(@crim_bg.crim_bg_translations)

    respond_to do |format|
      if @crim_bg.save
        format.html { redirect_to admin_crim_bgs_url, notice: t('app.msgs.success_created', :obj => t('activerecord.models.crim_bg')) }
        format.json { render json: @crim_bg, status: :created, location: @crim_bg }
      else
        format.html { render action: "new" }
        format.json { render json: @crim_bg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /crim_bgs/1
  # PUT /crim_bgs/1.json
  def update
    @crim_bg = CrimBg.find(params[:id])

    @crim_bg.assign_attributes(params[:crim_bg])

    add_missing_translation_content(@crim_bg.crim_bg_translations)

    respond_to do |format|
      if @crim_bg.update_attributes(params[:crim_bg])
        format.html { redirect_to admin_crim_bg_path(@crim_bg), notice: t('app.msgs.success_updated', :obj => t('activerecord.models.crim_bg')) }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @crim_bg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crim_bgs/1
  # DELETE /crim_bgs/1.json
  def destroy
    @crim_bg = CrimBg.find(params[:id])
    @crim_bg.destroy

    respond_to do |format|
      format.html { redirect_to admin_crim_bgs_url }
      format.json { head :no_content }
    end
  end
end
