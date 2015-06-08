class GunPermTranslation < ActiveRecord::Base
  attr_accessible :gun_perm_id, :name, :locale, :gun_perm_translations

	belongs_to :gun_perm

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
