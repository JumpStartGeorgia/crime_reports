class RelationshipTranslation < ActiveRecord::Base
  attr_accessible :relationship_id, :name, :locale, :relationship_translations, :id

	belongs_to :relationship

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
