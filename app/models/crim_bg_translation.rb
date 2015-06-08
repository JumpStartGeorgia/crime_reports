class CrimBgTranslation < ActiveRecord::Base
  attr_accessible :crim_bg_id, :name, :locale, :crim_bg_translations

	belongs_to :crim_bg

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
