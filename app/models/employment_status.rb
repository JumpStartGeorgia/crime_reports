class EmploymentStatus < ActiveRecord::Base
  attr_accessible :name, :employment_status_translations_attributes, :id

  translates :name

  has_many :employment_status_translations, :dependent => :destroy
  accepts_nested_attributes_for :employment_status_translations

  has_one :actor

  def self.by_name(name)
    with_translations(I18n.locale).find_by_name(name)
  end

end
