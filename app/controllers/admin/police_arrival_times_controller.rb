class Admin::PoliceArrivalTimesController < ApplicationController
  before_filter :authenticate_user!
  before_filter do |controller_instance|
    controller_instance.send(:valid_role?, User::ROLES[:admin])
  end

  # GET /police_arrival_times
  # GET /police_arrival_times.json
  def index
    @police_arrival_times = PoliceArrivalTime.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @police_arrival_times }
    end
  end

  # GET /police_arrival_times/1
  # GET /police_arrival_times/1.json
  def show
    @police_arrival_time = PoliceArrivalTime.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @police_arrival_time }
    end
  end

  # GET /police_arrival_times/new
  # GET /police_arrival_times/new.json
  def new
    @police_arrival_time = PoliceArrivalTime.new

    I18n.available_locales.each do |locale|
			@police_arrival_time.police_arrival_time_translations.build(:locale => locale.to_s)
		end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @police_arrival_time }
    end
  end

  # GET /police_arrival_times/1/edit
  def edit
    @police_arrival_time = PoliceArrivalTime.find(params[:id])
  end

  # POST /police_arrival_times
  # POST /police_arrival_times.json
  def create
    @police_arrival_time = PoliceArrivalTime.new(params[:police_arrival_time])

    add_missing_translation_content(@police_arrival_time.police_arrival_time_translations)

    respond_to do |format|
      if @police_arrival_time.save
        format.html { redirect_to admin_police_arrival_times_url, notice: t('app.msgs.success_created', :obj => t('activerecord.models.police_arrival_time')) }
        format.json { render json: @police_arrival_time, status: :created, location: @police_arrival_time
        }
      else
        format.html { render action: "new" }
        format.json { render json: @police_arrival_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /police_arrival_times/1
  # PUT /police_arrival_times/1.json
  def update
    @police_arrival_time = PoliceArrivalTime.find(params[:id])

    @police_arrival_time.assign_attributes(params[:police_arrival_time])

    add_missing_translation_content(@police_arrival_time.police_arrival_time_translations)

    respond_to do |format|
      if @police_arrival_time.update_attributes(params[:police_arrival_time])
        format.html { redirect_to admin_police_arrival_time_path(@police_arrival_time), notice: t('app.msgs.success_updated', :obj => t('activerecord.models.police_arrival_time')) }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @police_arrival_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /police_arrival_times/1
  # DELETE /police_arrival_times/1.json
  def destroy
    @police_arrival_time = PoliceArrivalTime.find(params[:id])
    @police_arrival_time.destroy

    respond_to do |format|
      format.html { redirect_to admin_police_arrival_times_url }
      format.json { head :no_content }
    end
  end
end
