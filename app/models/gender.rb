class Gender < ActiveRecord::Base
  attr_accessible :name, :gender_translations_attributes, :id

  translates :name
  has_many :gender_translations, :dependent => :destroy
  accepts_nested_attributes_for :gender_translations

  has_one :actor

  def self.by_name(name)
    with_translations(I18n.locale).find_by_name(name)
  end
end
