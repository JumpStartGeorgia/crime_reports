class Actor < ActiveRecord::Base
  attr_accessible :children, :crim_back, :dob, :fname, :gender, :gun, :lname, :mental_reg, :actor_type_id, :family_status_id, :social_status_id, :education_status_id, :employment_status_id, :substance_id

  belongs_to :report

  belongs_to :actor_type
  belongs_to :education_status
  belongs_to :employment_status
  belongs_to :family_status
  belongs_to :social_status
end
