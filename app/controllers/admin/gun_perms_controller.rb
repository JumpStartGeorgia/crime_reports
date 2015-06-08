class Admin::GunPermsController < ApplicationController
  before_filter :authenticate_user!
  before_filter do |controller_instance|
    controller_instance.send(:valid_role?, User::ROLES[:admin])
  end

  # GET /gun_perms
  # GET /gun_perms.json
  def index
    @gun_perms = GunPerm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gun_perms }
    end
  end

  # GET /gun_perms/1
  # GET /gun_perms/1.json
  def show
    @gun_perm = GunPerm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gun_perm }
    end
  end

  # GET /gun_perms/new
  # GET /gun_perms/new.json
  def new
    @gun_perm = GunPerm.new

    I18n.available_locales.each do |locale|
			@gun_perm.gun_perm_translations.build(:locale => locale.to_s)
		end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gun_perm }
    end
  end

  # GET /gun_perms/1/edit
  def edit
    @gun_perm = GunPerm.find(params[:id])
  end

  # POST /gun_perms
  # POST /gun_perms.json
  def create
    @gun_perm = GunPerm.new(params[:gun_perm])

    add_missing_translation_content(@gun_perm.gun_perm_translations)

    respond_to do |format|
      if @gun_perm.save
        format.html { redirect_to admin_gun_perms_url, notice: t('app.msgs.success_created', :obj => t('activerecord.models.gun_perm')) }
        format.json { render json: @gun_perm, status: :created, location: @gun_perm }
      else
        format.html { render action: "new" }
        format.json { render json: @gun_perm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gun_perms/1
  # PUT /gun_perms/1.json
  def update
    @gun_perm = GunPerm.find(params[:id])

    @gun_perm.assign_attributes(params[:gun_perm])

    add_missing_translation_content(@gun_perm.gun_perm_translations)

    respond_to do |format|
      if @gun_perm.update_attributes(params[:gun_perm])
        format.html { redirect_to admin_gun_perm_path(@gun_perm), notice: t('app.msgs.success_updated', :obj => t('activerecord.models.gun_perm')) }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gun_perm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gun_perms/1
  # DELETE /gun_perms/1.json
  def destroy
    @gun_perm = GunPerm.find(params[:id])
    @gun_perm.destroy

    respond_to do |format|
      format.html { redirect_to admin_gun_perms_url }
      format.json { head :no_content }
    end
  end
end
