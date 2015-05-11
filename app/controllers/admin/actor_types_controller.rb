class Admin::ActorTypesController < ApplicationController
  before_filter :authenticate_user!
  before_filter do |controller_instance|
    controller_instance.send(:valid_role?, User::ROLES[:admin])
  end

  # GET /actor_types
  # GET /actor_types.json
  def index
    @actor_types = ActorType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @actor_types }
    end
  end

  # GET /actor_types/1
  # GET /actor_types/1.json
  def show
    @actor_type = ActorType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @actor_type }
    end
  end

  # GET /actor_types/new
  # GET /actor_types/new.json
  def new
    @actor_type = ActorType.new

    I18n.available_locales.each do |locale|
			@actor_type.actor_type_translations.build(:locale => locale.to_s)
		end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @actor_type }
    end
  end

  # GET /actor_types/1/edit
  def edit
    @actor_type = ActorType.find(params[:id])
  end

  # POST /actor_types
  # POST /actor_types.json
  def create
    @actor_type = ActorType.new(params[:actor_type])

    add_missing_translation_content(@actor_type.actor_type_translations)

    respond_to do |format|
      if @actor_type.save
        format.html { redirect_to admin_actor_types_url, notice: t('app.msgs.success_created', :obj => t('activerecord.models.actor_type')) }
        format.json { render json: @actor_type, status: :created, location: @actor_type }
      else
        format.html { render action: "new" }
        format.json { render json: @actor_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /actor_types/1
  # PUT /actor_types/1.json
  def update
    @actor_type = ActorType.find(params[:id])

    @actor_type.assign_attributes(params[:actor_type])

    add_missing_translation_content(@actor_type.actor_type_translations)

    respond_to do |format|
      if @actor_type.update_attributes(params[:actor_type])
        format.html { redirect_to admin_actor_type_path(@actor_type), notice: t('app.msgs.success_updated', :obj => t('activerecord.models.actor_type')) }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @actor_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actor_types/1
  # DELETE /actor_types/1.json
  def destroy
    @actor_type = ActorType.find(params[:id])
    @actor_type.destroy

    respond_to do |format|
      format.html { redirect_to admin_actor_types_url }
      format.json { head :no_content }
    end
  end
end
