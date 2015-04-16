class Relationship < ActiveRecord::Base
  attr_accessible :description, :name, :relationship_translations_attributes

  translates :description, :name

  has_many :relationship_translations, :dependent => :destroy
end
