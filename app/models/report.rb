class Report < ActiveRecord::Base
  attr_accessible :crime_date, :crime_time, :emergency_arrival_time, :location_address, :location_category, :location_lat, :location_lon, :motive_id, :official_case_number, :police_arrival_time, :relationship_id, :weapon_id, :motive_id, :status_id, :actors_attributes

  belongs_to :relationship
  belongs_to :weapon
  belongs_to :motive
  belongs_to :status
  has_many :actors

  accepts_nested_attributes_for :actors, :reject_if => :all_blank, :allow_destroy => true
end
