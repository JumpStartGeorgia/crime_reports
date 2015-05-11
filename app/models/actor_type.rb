class ActorType < ActiveRecord::Base
  attr_accessible :name, :actor_type_translations_attributes

  translates :name

  has_many :actor_type_translations, :dependent => :destroy
  accepts_nested_attributes_for :actor_type_translations

  has_one :actor

  def self.by_name(name)
    with_translations(I18n.locale).find_by_name(name)
  end

end
