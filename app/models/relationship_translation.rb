class RelationshipTranslation < ActiveRecord::Base
  attr_accessible :relationship_id, :name, :description, :locale, :relationship_translations

	belongs_to :relationship

  validates :name, :presence => true

  def required_data_provided?
    provided = false
    provided = self.name.present? && self.description.present?
    return provided
  end

  def add_required_data(obj)
    self.name = obj.name if self.name.blank?
    self.description = obj.description if self.description.blank?
  end
end
