class ActorType < ActiveRecord::Base
  attr_accessible :name, :actor_type_translations_attributes, :id

  translates :name

  has_many :actor_type_translations, :dependent => :destroy
  accepts_nested_attributes_for :actor_type_translations

  has_many :actors

  def self.by_name(name)
    with_translations(I18n.locale).find_by_name(name)
  end

end
