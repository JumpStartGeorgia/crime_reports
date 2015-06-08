class GunPerm < ActiveRecord::Base
  attr_accessible :name, :gun_perm_translations_attributes

  translates :name

  has_many :gun_perm_translations, :dependent => :destroy
  accepts_nested_attributes_for :gun_perm_translations

  has_one :actor

  def self.by_name(name)
    with_translations(I18n.locale).find_by_name(name)
  end
end
