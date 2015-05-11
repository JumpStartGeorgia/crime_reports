class Actor < ActiveRecord::Base
  attr_accessible :children, :crim_back, :dob, :fname, :gender, :gun, :lname, :mental_reg

  belongs_to :report
end
