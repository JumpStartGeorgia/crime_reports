class Weapon < ActiveRecord::Base
  attr_accessible :name, :weapon_translations_attributes

  translates :name

  has_many :weapon_translations, :dependent => :destroy
  accepts_nested_attributes_for :weapon_translations

  has_one :report

  def self.by_name(name)
    with_translations(I18n.locale).find_by_name(name)
  end

end
