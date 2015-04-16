class Admin::RelationshipsController < ApplicationController
  before_filter :authenticate_user!
  before_filter do |controller_instance|
    controller_instance.send(:valid_role?, User::ROLES[:admin])
  end

  # GET /relationships
  # GET /relationships.json
  def index
    @relationships = Relationship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @relationships }
    end
  end

  # GET /relationships/1
  # GET /relationships/1.json
  def show
    @relationship = Relationship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @relationship }
    end
  end

  # GET /relationships/new
  # GET /relationships/new.json
  def new
    @relationship = Relationship.new

    I18n.available_locales.each do |locale|
			@relationship.relationship_translations.build(:locale => locale.to_s)
		end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @relationship }
    end
  end

  # GET /relationships/1/edit
  def edit
    @relationship = Relationship.find(params[:id])
  end

  # POST /relationships
  # POST /relationships.json
  def create
    @relationship = Relationship.new(params[:relationship])

    add_missing_translation_content(@relationship.relationship_translations)

    respond_to do |format|
      if @relationship.save
        format.html { redirect_to admin_relationship_path(@relationship), notice: t('app.msgs.success_created', :obj => t('activerecord.models.relationship')) }
        format.json { render json: @relationship, status: :created, location: @relationship }
      else
        format.html { render action: "new" }
        format.json { render json: @relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /relationships/1
  # PUT /relationships/1.json
  def update
    @relationship = Relationship.find(params[:id])

    @relationship.assign_attributes(params[:relationship])

    add_missing_translation_content(@relationship.relationship_translations)

    respond_to do |format|
      if @relationship.update_attributes(params[:relationship])
        format.html { redirect_to admin_relationship_path(@relationship), notice: t('app.msgs.success_updated', :obj => t('activerecord.models.relationship')) }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relationships/1
  # DELETE /relationships/1.json
  def destroy
    @relationship = Relationship.find(params[:id])
    @relationship.destroy

    respond_to do |format|
      format.html { redirect_to admin_relationships_url }
      format.json { head :no_content }
    end
  end
end
