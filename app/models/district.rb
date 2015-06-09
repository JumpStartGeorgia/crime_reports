class District < ActiveRecord::Base
  attr_accessible :name, :district_translations_attributes, :id

  translates :name

  has_many :district_translations, :dependent => :destroy
  accepts_nested_attributes_for :district_translations

  has_one :report

  def self.by_name(name)
    with_translations(I18n.locale).find_by_name(name)
  end
end
