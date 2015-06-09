class EmploymentStatusTranslation < ActiveRecord::Base
  attr_accessible :employment_status_id, :name, :locale, :id, :employment_status_translations

	belongs_to :employment_status

  validates :name, :presence => true

  def required_data_provided?
    provided = false
    provided = self.name.present?
    return provided
  end

  def add_required_data(obj)
    self.name = obj.name if self.name.blank?
  end
end
