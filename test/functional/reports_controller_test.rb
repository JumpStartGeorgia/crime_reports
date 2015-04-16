require 'test_helper'

class ReportsControllerTest < ActionController::TestCase
  setup do
    @report = reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create report" do
    assert_difference('Report.count') do
      post :create, report: { crime_date: @report.crime_date, crime_time: @report.crime_time, emergency_arrival_time: @report.emergency_arrival_time, location_address: @report.location_address, location_category: @report.location_category, location_lat: @report.location_lat, location_lon: @report.location_lon, motive_id: @report.motive_id, official_case_number: @report.official_case_number, police_arrival_time: @report.police_arrival_time, relationship_id: @report.relationship_id, report_status_id: @report.report_status_id, weapon_id: @report.weapon_id }
    end

    assert_redirected_to report_path(assigns(:report))
  end

  test "should show report" do
    get :show, id: @report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @report
    assert_response :success
  end

  test "should update report" do
    put :update, id: @report, report: { crime_date: @report.crime_date, crime_time: @report.crime_time, emergency_arrival_time: @report.emergency_arrival_time, location_address: @report.location_address, location_category: @report.location_category, location_lat: @report.location_lat, location_lon: @report.location_lon, motive_id: @report.motive_id, official_case_number: @report.official_case_number, police_arrival_time: @report.police_arrival_time, relationship_id: @report.relationship_id, report_status_id: @report.report_status_id, weapon_id: @report.weapon_id }
    assert_redirected_to report_path(assigns(:report))
  end

  test "should destroy report" do
    assert_difference('Report.count', -1) do
      delete :destroy, id: @report
    end

    assert_redirected_to reports_path
  end
end
