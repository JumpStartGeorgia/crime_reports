class Admin::SubstancesController < ApplicationController
  before_filter :authenticate_user!
  before_filter do |controller_instance|
    controller_instance.send(:valid_role?, User::ROLES[:admin])
  end

  # GET /substances
  # GET /substances.json
  def index
    @substances = Substance.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @substances }
    end
  end

  # GET /substances/1
  # GET /substances/1.json
  def show
    @substance = Substance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @substance }
    end
  end

  # GET /substances/new
  # GET /substances/new.json
  def new
    @substance = Substance.new

    I18n.available_locales.each do |locale|
			@substance.substance_translations.build(:locale => locale.to_s)
		end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @substance }
    end
  end

  # GET /substances/1/edit
  def edit
    @substance = Substance.find(params[:id])
  end

  # POST /substances
  # POST /substances.json
  def create
    @substance = Substance.new(params[:substance])

    add_missing_translation_content(@substance.substance_translations)

    respond_to do |format|
      if @substance.save
        format.html { redirect_to admin_substances_url, notice: t('app.msgs.success_created', :obj => t('activerecord.models.substance')) }
        format.json { render json: @substance, status: :created, location: @substance
        }
      else
        format.html { render action: "new" }
        format.json { render json: @substance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /substances/1
  # PUT /substances/1.json
  def update
    @substance = Substance.find(params[:id])

    @substance.assign_attributes(params[:substance])

    add_missing_translation_content(@substance.substance_translations)


    respond_to do |format|
      if @substance.update_attributes(params[:substance])
        format.html { redirect_to admin_substance_path(@substance), notice: t('app.msgs.success_updated', :obj => t('activerecord.models.substance')) }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @substance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /substances/1
  # DELETE /substances/1.json
  def destroy
    @substance = Substance.find(params[:id])
    @substance.destroy

    respond_to do |format|
      format.html { redirect_to admin.substances_url }
      format.json { head :no_content }
    end
  end
end
