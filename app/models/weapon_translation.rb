class WeaponTranslation < ActiveRecord::Base
  attr_accessible :weapon_id, :name, :locale, :weapon_translations, :id

	belongs_to :weapon

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
