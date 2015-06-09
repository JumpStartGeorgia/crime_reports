class FamilyStatusTranslation < ActiveRecord::Base
  attr_accessible :family_status_id, :name, :locale, :family_status_translations, :id

	belongs_to :family_status

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
