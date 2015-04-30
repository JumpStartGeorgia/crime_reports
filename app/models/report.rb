class Report < ActiveRecord::Base
  attr_accessible :crime_date, :crime_time, :emergency_arrival_time, :location_address, :location_category, :location_lat, :location_lon, :motive_id, :official_case_number, :police_arrival_time, :relationship_id, :report_status_id, :weapon_id

  has_one :relationship
end
