class PoliceArrivalTimeTranslation < ActiveRecord::Base
  attr_accessible :police_arrival_time_id, :name, :locale, :police_arrival_time_translations

	belongs_to :police_arrival_time

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
