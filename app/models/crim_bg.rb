class CrimBg < ActiveRecord::Base
  attr_accessible :name, :crim_bg_translations_attributes, :id

  translates :name

  has_many :crim_bg_translations, :dependent => :destroy
  accepts_nested_attributes_for :crim_bg_translations

  has_one :actor

  def self.by_name(name)
    with_translations(I18n.locale).find_by_name(name)
  end
end
