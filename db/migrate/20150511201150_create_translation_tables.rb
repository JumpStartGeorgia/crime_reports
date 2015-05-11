class CreateTranslationTables < ActiveRecord::Migration
  def change
    ActorType.create_translation_table! :name => :string
    EducationStatus.create_translation_table! :name => :string
    EmploymentStatus.create_translation_table! :name => :string
    FamilyStatus.create_translation_table! :name => :string
    SocialStatus.create_translation_table! :name => :string
  end
end
