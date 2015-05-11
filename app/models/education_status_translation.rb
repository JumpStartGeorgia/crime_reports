class EducationStatusTranslation < ActiveRecord::Base
  attr_accessible :education_status_id, :name, :locale, :education_status_translations

	belongs_to :education_status

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
