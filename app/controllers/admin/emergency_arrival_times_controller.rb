class Admin::EmergencyArrivalTimesController < ApplicationController
  before_filter :authenticate_user!
  before_filter do |controller_instance|
    controller_instance.send(:valid_role?, User::ROLES[:admin])
  end

  # GET /emergency_arrival_times
  # GET /emergency_arrival_times.json
  def index
    @emergency_arrival_times = EmergencyArrivalTime.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @emergency_arrival_times }
    end
  end

  # GET /emergency_arrival_times/1
  # GET /emergency_arrival_times/1.json
  def show
    @emergency_arrival_time = EmergencyArrivalTime.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @emergency_arrival_time }
    end
  end

  # GET /emergency_arrival_times/new
  # GET /emergency_arrival_times/new.json
  def new
    @emergency_arrival_time = EmergencyArrivalTime.new

    I18n.available_locales.each do |locale|
			@emergency_arrival_time.emergency_arrival_time_translations.build(:locale => locale.to_s)
		end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @emergency_arrival_time }
    end
  end

  # GET /emergency_arrival_times/1/edit
  def edit
    @emergency_arrival_time = EmergencyArrivalTime.find(params[:id])
  end

  # POST /emergency_arrival_times
  # POST /emergency_arrival_times.json
  def create
    @emergency_arrival_time = EmergencyArrivalTime.new(params[:emergency_arrival_time])

    add_missing_translation_content(@emergency_arrival_time.emergency_arrival_time_translations)

    respond_to do |format|
      if @emergency_arrival_time.save
        format.html { redirect_to admin_emergency_arrival_times_url, notice: t('app.msgs.success_created', :obj => t('activerecord.models.emergency_arrival_time')) }
        format.json { render json: @emergency_arrival_time, status: :created, location: @emergency_arrival_time
        }
      else
        format.html { render action: "new" }
        format.json { render json: @emergency_arrival_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /emergency_arrival_times/1
  # PUT /emergency_arrival_times/1.json
  def update
    @emergency_arrival_time = EmergencyArrivalTime.find(params[:id])

    @emergency_arrival_time.assign_attributes(params[:emergency_arrival_time])

    add_missing_translation_content(@emergency_arrival_time.emergency_arrival_time_translations)

    respond_to do |format|
      if @emergency_arrival_time.update_attributes(params[:emergency_arrival_time])
        format.html { redirect_to admin_emergency_arrival_time_path(@emergency_arrival_time), notice: t('app.msgs.success_updated', :obj => t('activerecord.models.emergency_arrival_time')) }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @emergency_arrival_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emergency_arrival_times/1
  # DELETE /emergency_arrival_times/1.json
  def destroy
    @emergency_arrival_time = EmergencyArrivalTime.find(params[:id])
    @emergency_arrival_time.destroy

    respond_to do |format|
      format.html { redirect_to admin_emergency_arrival_times_url }
      format.json { head :no_content }
    end
  end
end
