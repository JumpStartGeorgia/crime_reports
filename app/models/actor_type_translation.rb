class ActorTypeTranslation < ActiveRecord::Base
  attr_accessible :actor_type_id, :name, :locale, :actor_type_translations, :id

	belongs_to :actor_type

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
