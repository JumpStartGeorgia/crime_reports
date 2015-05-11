class SubstanceTranslation < ActiveRecord::Base
  attr_accessible :substance_id, :name, :locale, :substance_translations

	belongs_to :substance

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
