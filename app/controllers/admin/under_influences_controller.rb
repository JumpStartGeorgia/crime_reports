class Admin::UnderInfluencesController < ApplicationController
  before_filter :authenticate_user!
  before_filter do |controller_instance|
    controller_instance.send(:valid_role?, User::ROLES[:admin])
  end

  # GET /under_influences
  # GET /under_influences.json
  def index
    @under_influences = UnderInfluence.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @under_influences }
    end
  end

  # GET /under_influences/1
  # GET /under_influences/1.json
  def show
    @under_influence = UnderInfluence.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @under_influence }
    end
  end

  # GET /under_influences/new
  # GET /under_influences/new.json
  def new
    @under_influence = UnderInfluence.new

    I18n.available_locales.each do |locale|
			@under_influence.under_influence_translations.build(:locale => locale.to_s)
		end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @under_influence }
    end
  end

  # GET /under_influences/1/edit
  def edit
    @under_influence = UnderInfluence.find(params[:id])
  end

  # POST /under_influences
  # POST /under_influences.json
  def create
    @under_influence = UnderInfluence.new(params[:under_influence])

    add_missing_translation_content(@under_influence.under_influence_translations)

    respond_to do |format|
      if @under_influence.save
        format.html { redirect_to admin_under_influences_url, notice: t('app.msgs.success_created', :obj => t('activerecord.models.under_influence')) }
        format.json { render json: @under_influence, status: :created, location: @under_influence
        }
      else
        format.html { render action: "new" }
        format.json { render json: @under_influence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /under_influences/1
  # PUT /under_influences/1.json
  def update
    @under_influence = UnderInfluence.find(params[:id])

    @under_influence.assign_attributes(params[:under_influence])

    add_missing_translation_content(@under_influence.under_influence_translations)

    respond_to do |format|
      if @under_influence.update_attributes(params[:under_influence])
        format.html { redirect_to admin_under_influence_path(@under_influence), notice: t('app.msgs.success_updated', :obj => t('activerecord.models.under_influence')) }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @under_influence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /under_influences/1
  # DELETE /under_influences/1.json
  def destroy
    @under_influence = UnderInfluence.find(params[:id])
    @under_influence.destroy

    respond_to do |format|
      format.html { redirect_to admin_under_influences_url }
      format.json { head :no_content }
    end
  end
end
