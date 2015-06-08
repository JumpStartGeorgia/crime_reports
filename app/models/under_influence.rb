class UnderInfluence < ActiveRecord::Base
  attr_accessible :name, :under_influence_translations_attributes

  translates :name

  has_many :under_influence_translations, :dependent => :destroy
  accepts_nested_attributes_for :under_influence_translations

  has_one :actor

  def self.by_name(name)
    with_translations(I18n.locale).find_by_name(name)
  end
end
