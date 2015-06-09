class SocialStatusTranslation < ActiveRecord::Base
  attr_accessible :social_status_id, :name, :locale, :social_status_translations, :id

	belongs_to :social_status

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
