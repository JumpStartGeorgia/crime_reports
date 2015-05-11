class EducationStatus < ActiveRecord::Base
  attr_accessible :name, :education_status_translations_attributes

  translates :name

  has_many :education_status_translations, :dependent => :destroy
  accepts_nested_attributes_for :education_status_translations

  has_one :actor

  def self.by_name(name)
    with_translations(I18n.locale).find_by_name(name)
  end

end
