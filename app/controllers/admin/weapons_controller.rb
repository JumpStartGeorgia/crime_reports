class Admin::WeaponsController < ApplicationController
  before_filter :authenticate_user!
  before_filter do |controller_instance|
    controller_instance.send(:valid_role?, User::ROLES[:admin])
  end

  # GET /weapons
  # GET /weapons.json
  def index
    @weapons = Weapon.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @weapons }
    end
  end

  # GET /weapons/1
  # GET /weapons/1.json
  def show
    @weapon = Weapon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @weapon }
    end
  end

  # GET /weapons/new
  # GET /weapons/new.json
  def new
    @weapon = Weapon.new

    I18n.available_locales.each do |locale|
			@weapon.weapon_translations.build(:locale => locale.to_s)
		end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @weapon }
    end
  end

  # GET /weapons/1/edit
  def edit
    @weapon = Weapon.find(params[:id])
  end

  # POST /weapons
  # POST /weapons.json
  def create
    @weapon = Weapon.new(params[:weapon])

    add_missing_translation_content(@weapon.weapon_translations)

    respond_to do |format|
      if @weapon.save
        format.html { redirect_to admin_weapons_url, notice: t('app.msgs.success_created', :obj => t('activerecord.models.weapon')) }
        format.json { render json: @weapon, status: :created, location: @weapon
        }
      else
        format.html { render action: "new" }
        format.json { render json: @weapon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /weapons/1
  # PUT /weapons/1.json
  def update
    @weapon = Weapon.find(params[:id])

    @weapon.assign_attributes(params[:weapon])

    add_missing_translation_content(@weapon.weapon_translations)

    respond_to do |format|
      if @weapon.update_attributes(params[:weapon])
        format.html { redirect_to admin_weapon_path(@weapon), notice: t('app.msgs.success_updated', :obj => t('activerecord.models.weapon')) }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @weapon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weapons/1
  # DELETE /weapons/1.json
  def destroy
    @weapon = Weapon.find(params[:id])
    @weapon.destroy

    respond_to do |format|
      format.html { redirect_to admin_weapons_url }
      format.json { head :no_content }
    end
  end
end
