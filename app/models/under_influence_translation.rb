class UnderInfluenceTranslation < ActiveRecord::Base
  attr_accessible :under_influence_id, :name, :locale, :under_influence_translations

	belongs_to :under_influence

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
