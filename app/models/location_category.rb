class LocationCategory < ActiveRecord::Base
  attr_accessible :name, :location_category_translations_attributes, :id

  translates :name

  has_many :location_category_translations, :dependent => :destroy
  accepts_nested_attributes_for :location_category_translations

  has_one :report

  def self.by_name(name)
    with_translations(I18n.locale).find_by_name(name)
  end
end
