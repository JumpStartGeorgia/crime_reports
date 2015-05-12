# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#####################
## Pages
#####################
puts "Loading Pages"
Page.delete_all
PageTranslation.delete_all
p = Page.create(:id => 1, :name => 'about')
p.page_translations.create(:locale => 'en', :title => 'About Bootstrap Starter Project', :content => 'You have run rake db:seed and this is an example of translated content. Click the Language Switcher link in the top-right corner to view the text in another language.')
p.page_translations.create(:locale => 'ka', :title => "'Bootstrap Starter' პროექტის შესახებ", :content => "თქვენ ჩაუშვით 'rake db:seed' და ეს არის კონტენტის თარგმანის მაგალით. ტექსტის სხვა ენაზე სანახავად დააჭირეთ ენის გადამრთველის ბმულს მარჯვენა ზედა კუთხეში.")

#####################
## Default Dropdown Values
#####################

puts "Loading Defaults for Dropdowns"

Status.delete_all
StatusTranslation.delete_all

s = Status.create(:id => 1)
s.status_translations.create(:locale => 'en', :name => 'Draft')
s.status_translations.create(:locale => 'ka', :name => 'Draft')

s = Status.create(:id => 2)
s.status_translations.create(:locale => 'en', :name => 'Duplicate')
s.status_translations.create(:locale => 'ka', :name => 'Duplicate')

s = Status.create(:id => 3)
s.status_translations.create(:locale => 'en', :name => 'Published')
s.status_translations.create(:locale => 'ka', :name => 'Published')
