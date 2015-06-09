class Substance < ActiveRecord::Base
  attr_accessible :name, :substance_translations_attributes, :id

  translates :name

  has_many :substance_translations, :dependent => :destroy
  accepts_nested_attributes_for :substance_translations

  has_one :actor

  def self.by_name(name)
    with_translations(I18n.locale).find_by_name(name)
  end

end
