class Actor < ActiveRecord::Base
  attr_accessible :children, :crim_back, :yob, :fname, :gender, :gun, :lname, :mental_reg, :actor_type_id, :family_status_id, :social_status_id, :education_status_id, :employment_status_id, :substance_id, :relationship_id, :under_influence_id, :crim_bg_id, :gun_perm_id, :id

  def full_name
    self.fname + ' ' + self.lname
  end

  belongs_to :report

  belongs_to :gender
  belongs_to :gun_perm
  belongs_to :crim_bg
  belongs_to :under_influence
  belongs_to :relationship
  belongs_to :actor_type
  belongs_to :education_status
  belongs_to :employment_status
  belongs_to :family_status
  belongs_to :social_status
end
