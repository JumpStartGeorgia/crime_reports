class RelationshipTranslation < ActiveRecord::Base
  attr_accessible :relationship_id, :name, :description, :locale, :relationship_translations
	belongs_to :relationship

	def self.by_name(name)
    with_translations(I18n.locale).find_by_name(name)
  end
end
