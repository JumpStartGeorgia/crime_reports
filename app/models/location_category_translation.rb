class LocationCategoryTranslation < ActiveRecord::Base
  attr_accessible :location_category_id, :name, :locale, :location_category_translations

	belongs_to :location_category

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
