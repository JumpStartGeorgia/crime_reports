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

# Report Status

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

# Employment Status

EmploymentStatus.delete_all
EmploymentStatusTranslation.delete_all

es = EmploymentStatus.create(:id => 1)
es.employment_status_translations.create(:locale => 'en', :name => 'Unemployed')
es.employment_status_translations.create(:locale => 'ka', :name => 'Unemployed')

es = EmploymentStatus.create(:id => 2)
es.employment_status_translations.create(:locale => 'en', :name => 'Employed')
es.employment_status_translations.create(:locale => 'ka', :name => 'Employed')

es = EmploymentStatus.create(:id => 3)
es.employment_status_translations.create(:locale => 'en', :name => 'Not Relevant')
es.employment_status_translations.create(:locale => 'ka', :name => 'Not Relevant')

es = EmploymentStatus.create(:id => 4)
es.employment_status_translations.create(:locale => 'en', :name => 'Self-employed')
es.employment_status_translations.create(:locale => 'ka', :name => 'Self-employed')

es = EmploymentStatus.create(:id => 5)
es.employment_status_translations.create(:locale => 'en', :name => 'Unknown')
es.employment_status_translations.create(:locale => 'ka', :name => 'Unknown')

# Family Status

FamilyStatus.delete_all
FamilyStatusTranslation.delete_all

fs = FamilyStatus.create(:id => 1)
fs.family_status_translations.create(:locale => 'en', :name => 'Single')
fs.family_status_translations.create(:locale => 'ka', :name => 'Single')

fs = FamilyStatus.create(:id => 2)
fs.family_status_translations.create(:locale => 'en', :name => 'In Relationship')
fs.family_status_translations.create(:locale => 'ka', :name => 'In Relationship')

fs = FamilyStatus.create(:id => 3)
fs.family_status_translations.create(:locale => 'en', :name => 'Married')
fs.family_status_translations.create(:locale => 'ka', :name => 'Married')

fs = FamilyStatus.create(:id => 4)
fs.family_status_translations.create(:locale => 'en', :name => 'Divorced')
fs.family_status_translations.create(:locale => 'ka', :name => 'Divorced')

fs = FamilyStatus.create(:id => 5)
fs.family_status_translations.create(:locale => 'en', :name => 'Widow')
fs.family_status_translations.create(:locale => 'ka', :name => 'Widow')

fs = FamilyStatus.create(:id => 6)
fs.family_status_translations.create(:locale => 'en', :name => 'Unknown')
fs.family_status_translations.create(:locale => 'ka', :name => 'Unknown')

# Education Status

EducationStatus.delete_all
EducationStatusTranslation.delete_all

es = EducationStatus.create(:id => 1)
es.education_status_translations.create(:locale => 'en', :name => 'None')
es.education_status_translations.create(:locale => 'ka', :name => 'None')

es = EducationStatus.create(:id => 2)
es.education_status_translations.create(:locale => 'en', :name => 'Primary Education')
es.education_status_translations.create(:locale => 'ka', :name => 'Primary Eduacation')

es = EducationStatus.create(:id => 3)
es.education_status_translations.create(:locale => 'en', :name => 'Secondary Education')
es.education_status_translations.create(:locale => 'ka', :name => 'Secondary Education')

es = EducationStatus.create(:id => 4)
es.education_status_translations.create(:locale => 'en', :name => 'Higher Education')
es.education_status_translations.create(:locale => 'ka', :name => 'Higher Education')

es = EducationStatus.create(:id => 5)
es.education_status_translations.create(:locale => 'en', :name => 'Unknown')
es.education_status_translations.create(:locale => 'ka', :name => 'Unknown')

# Actor Type

ActorType.delete_all
ActorTypeTranslation.delete_all

t = ActorType.create(:id => 1)
t.actor_type_translations.create(:locale => 'en', :name => 'Perpetrator')
t.actor_type_translations.create(:locale => 'ka', :name => 'Perpetrator')

t = ActorType.create(:id => 2)
t.actor_type_translations.create(:locale => 'en', :name => 'Victim')
t.actor_type_translations.create(:locale => 'ka', :name => 'Victim')

# Relationship

Relationship.delete_all
RelationshipTranslation.delete_all

r = Relationship.create(:id => 1)
r.relationship_translations.create(:locale => 'en', :name => 'Intimate Partner')
r.relationship_translations.create(:locale => 'ka', :name => 'Intimate Partner')

r = Relationship.create(:id => 2)
r.relationship_translations.create(:locale => 'en', :name => 'Husband')
r.relationship_translations.create(:locale => 'ka', :name => 'Husband')

r = Relationship.create(:id => 3)
r.relationship_translations.create(:locale => 'en', :name => 'Wife')
r.relationship_translations.create(:locale => 'ka', :name => 'Wife')

r = Relationship.create(:id => 4)
r.relationship_translations.create(:locale => 'en', :name => 'Ex-husband')
r.relationship_translations.create(:locale => 'ka', :name => 'Ex-husband')

r = Relationship.create(:id => 5)
r.relationship_translations.create(:locale => 'en', :name => 'Ex-wife')
r.relationship_translations.create(:locale => 'ka', :name => 'Ex-wife')

r = Relationship.create(:id => 6)
r.relationship_translations.create(:locale => 'en', :name => 'Mother')
r.relationship_translations.create(:locale => 'ka', :name => 'Mother')

r = Relationship.create(:id => 7)
r.relationship_translations.create(:locale => 'en', :name => 'Father')
r.relationship_translations.create(:locale => 'ka', :name => 'Father')

r = Relationship.create(:id => 8)
r.relationship_translations.create(:locale => 'en', :name => 'Brother')
r.relationship_translations.create(:locale => 'ka', :name => 'Brother')

r = Relationship.create(:id => 9)
r.relationship_translations.create(:locale => 'en', :name => 'Sister')
r.relationship_translations.create(:locale => 'ka', :name => 'Sister')

r = Relationship.create(:id => 10)
r.relationship_translations.create(:locale => 'en', :name => 'Son')
r.relationship_translations.create(:locale => 'ka', :name => 'Son')

r = Relationship.create(:id => 11)
r.relationship_translations.create(:locale => 'en', :name => 'Daughter')
r.relationship_translations.create(:locale => 'ka', :name => 'Daughter')

r = Relationship.create(:id => 12)
r.relationship_translations.create(:locale => 'en', :name => 'Other Family Member')
r.relationship_translations.create(:locale => 'ka', :name => 'Other Family Member')

r = Relationship.create(:id => 13)
r.relationship_translations.create(:locale => 'en', :name => 'Neighbor')
r.relationship_translations.create(:locale => 'ka', :name => 'Neighbor')

r = Relationship.create(:id => 14)
r.relationship_translations.create(:locale => 'en', :name => 'Business Partner')
r.relationship_translations.create(:locale => 'ka', :name => 'Business Partner')

r = Relationship.create(:id => 15)
r.relationship_translations.create(:locale => 'en', :name => 'Other')
r.relationship_translations.create(:locale => 'ka', :name => 'Other')

r = Relationship.create(:id => 16)
r.relationship_translations.create(:locale => 'en', :name => 'Stranger')
r.relationship_translations.create(:locale => 'ka', :name => 'Stranger')

r = Relationship.create(:id => 17)
r.relationship_translations.create(:locale => 'en', :name => 'Unknown')
r.relationship_translations.create(:locale => 'ka', :name => 'Unknown')

# Weapon

Weapon.delete_all
WeaponTranslation.delete_all

w = Weapon.create(:id => 1)
w.weapon_translations.create(:locale => 'en', :name => 'Gun')
w.weapon_translations.create(:locale => 'ka', :name => 'Gun')

w = Weapon.create(:id => 2)
w.weapon_translations.create(:locale => 'en', :name => 'Knife')
w.weapon_translations.create(:locale => 'ka', :name => 'Knife')

w = Weapon.create(:id => 3)
w.weapon_translations.create(:locale => 'en', :name => 'Blunt Object')
w.weapon_translations.create(:locale => 'ka', :name => 'Blunt Object')

w = Weapon.create(:id => 4)
w.weapon_translations.create(:locale => 'en', :name => 'Ax')
w.weapon_translations.create(:locale => 'ka', :name => 'Ax')

w = Weapon.create(:id => 5)
w.weapon_translations.create(:locale => 'en', :name => 'Drowning')
w.weapon_translations.create(:locale => 'ka', :name => 'Drowning')

w = Weapon.create(:id => 6)
w.weapon_translations.create(:locale => 'en', :name => 'Choking')
w.weapon_translations.create(:locale => 'ka', :name => 'Choking')

w = Weapon.create(:id => 7)
w.weapon_translations.create(:locale => 'en', :name => 'Other')
w.weapon_translations.create(:locale => 'ka', :name => 'Other')

w = Weapon.create(:id => 8)
w.weapon_translations.create(:locale => 'en', :name => 'Unknown')
w.weapon_translations.create(:locale => 'ka', :name => 'Unkown')

# Motive

Motive.delete_all
MotiveTranslation.delete_all

m = Motive.create(:id => 1)
m.motive_translations.create(:locale => 'en', :name => 'Robbery')
m.motive_translations.create(:locale => 'ka', :name => 'Robbery')

m = Motive.create(:id => 2)
m.motive_translations.create(:locale => 'en', :name => 'Revenge')
m.motive_translations.create(:locale => 'ka', :name => 'Revenge')

m = Motive.create(:id => 3)
m.motive_translations.create(:locale => 'en', :name => 'Money')
m.motive_translations.create(:locale => 'ka', :name => 'Money')

m = Motive.create(:id => 4)
m.motive_translations.create(:locale => 'en', :name => 'Property')
m.motive_translations.create(:locale => 'ka', :name => 'Property')

m = Motive.create(:id => 5)
m.motive_translations.create(:locale => 'en', :name => 'Honor Killing')
m.motive_translations.create(:locale => 'ka', :name => 'Honor Killing')

m = Motive.create(:id => 6)
m.motive_translations.create(:locale => 'en', :name => 'Jealousy')
m.motive_translations.create(:locale => 'ka', :name => 'Jealousy')

m = Motive.create(:id => 7)
m.motive_translations.create(:locale => 'en', :name => 'Accidental')
m.motive_translations.create(:locale => 'ka', :name => 'Accidental')

m = Motive.create(:id => 8)
m.motive_translations.create(:locale => 'en', :name => 'Argument')
m.motive_translations.create(:locale => 'ka', :name => 'Argument')

m = Motive.create(:id => 9)
m.motive_translations.create(:locale => 'en', :name => 'Other')
m.motive_translations.create(:locale => 'ka', :name => 'Other')

m = Motive.create(:id => 10)
m.motive_translations.create(:locale => 'en', :name => 'Unknown')
m.motive_translations.create(:locale => 'ka', :name => 'Unknown')

# Police Arrival Time

PoliceArrivalTime.delete_all
PoliceArrivalTimeTranslation.delete_all

pat = PoliceArrivalTime.create(:id => 1)
pat.police_arrival_time_translations.create(:locale => 'en', :name => 'Within an hour')
pat.police_arrival_time_translations.create(:locale => 'ka', :name => 'Within an hour')

pat = PoliceArrivalTime.create(:id => 2)
pat.police_arrival_time_translations.create(:locale => 'en', :name => 'Within 6 hours')
pat.police_arrival_time_translations.create(:locale => 'ka', :name => 'Within 6 hours')

pat = PoliceArrivalTime.create(:id => 3)
pat.police_arrival_time_translations.create(:locale => 'en', :name => 'Within 12 hours')
pat.police_arrival_time_translations.create(:locale => 'ka', :name => 'Within 12 hours')

pat = PoliceArrivalTime.create(:id => 4)
pat.police_arrival_time_translations.create(:locale => 'en', :name => 'Within 24 hours')
pat.police_arrival_time_translations.create(:locale => 'ka', :name => 'Within 24 hours')

pat = PoliceArrivalTime.create(:id => 5)
pat.police_arrival_time_translations.create(:locale => 'en', :name => 'Within 48 hours')
pat.police_arrival_time_translations.create(:locale => 'ka', :name => 'Within 48 hours')

pat = PoliceArrivalTime.create(:id => 6)
pat.police_arrival_time_translations.create(:locale => 'en', :name => 'After 48 hours')
pat.police_arrival_time_translations.create(:locale => 'ka', :name => 'After 48 hours')

pat = PoliceArrivalTime.create(:id => 7)
pat.police_arrival_time_translations.create(:locale => 'en', :name => 'Never')
pat.police_arrival_time_translations.create(:locale => 'ka', :name => 'Never')

pat = PoliceArrivalTime.create(:id => 8)
pat.police_arrival_time_translations.create(:locale => 'en', :name => 'Unknown')
pat.police_arrival_time_translations.create(:locale => 'ka', :name => 'Unknown')

# Emergency Arrival Time

EmergencyArrivalTime.delete_all
EmergencyArrivalTimeTranslation.delete_all

eat = EmergencyArrivalTime.create(:id => 1)
eat.emergency_arrival_time_translations.create(:locale => 'en', :name => 'Within 15 minutes')
eat.emergency_arrival_time_translations.create(:locale => 'ka', :name => 'Within 15 minutes')

eat = EmergencyArrivalTime.create(:id => 2)
eat.emergency_arrival_time_translations.create(:locale => 'en', :name => 'Within 30 minutes')
eat.emergency_arrival_time_translations.create(:locale => 'ka', :name => 'Within 30 minutes')

eat = EmergencyArrivalTime.create(:id => 3)
eat.emergency_arrival_time_translations.create(:locale => 'en', :name => 'Within an hour')
eat.emergency_arrival_time_translations.create(:locale => 'ka', :name => 'Within an hour')

eat = EmergencyArrivalTime.create(:id => 4)
eat.emergency_arrival_time_translations.create(:locale => 'en', :name => 'Within 2 hours')
eat.emergency_arrival_time_translations.create(:locale => 'ka', :name => 'Within 2 hours')

eat = EmergencyArrivalTime.create(:id => 5)
eat.emergency_arrival_time_translations.create(:locale => 'en', :name => 'Within 6 hours')
eat.emergency_arrival_time_translations.create(:locale => 'ka', :name => 'Within 6 hours')

eat = EmergencyArrivalTime.create(:id => 6)
eat.emergency_arrival_time_translations.create(:locale => 'en', :name => 'After 6 hours')
eat.emergency_arrival_time_translations.create(:locale => 'ka', :name => 'After 6 hours')

eat = EmergencyArrivalTime.create(:id => 7)
eat.emergency_arrival_time_translations.create(:locale => 'en', :name => 'Never')
eat.emergency_arrival_time_translations.create(:locale => 'ka', :name => 'Never')

eat = EmergencyArrivalTime.create(:id => 8)
eat.emergency_arrival_time_translations.create(:locale => 'en', :name => 'Unknown')
eat.emergency_arrival_time_translations.create(:locale => 'ka', :name => 'Unknown')

# Location Category

LocationCategory.delete_all
LocationCategoryTranslation.delete_all

lc = LocationCategory.create(:id => 1)
lc.location_category_translations.create(:locale => 'en', :name => 'Inside')
lc.location_category_translations.create(:locale => 'ka', :name => 'Inside')

lc = LocationCategory.create(:id => 2)
lc.location_category_translations.create(:locale => 'en', :name => 'Outside')
lc.location_category_translations.create(:locale => 'ka', :name => 'Outside')

lc = LocationCategory.create(:id => 3)
lc.location_category_translations.create(:locale => 'en', :name => 'Unknown')
lc.location_category_translations.create(:locale => 'ka', :name => 'Unknown')

# Social Status

SocialStatus.delete_all
SocialStatusTranslation.delete_all

ss = SocialStatus.create(:id => 1)
ss.social_status_translations.create(:locale => 'en', :name => 'Above poverty level')
ss.social_status_translations.create(:locale => 'ka', :name => 'Above poverty level')

ss = SocialStatus.create(:id => 2)
ss.social_status_translations.create(:locale => 'en', :name => 'Below poverty level')
ss.social_status_translations.create(:locale => 'ka', :name => 'Below poverty level')

ss = SocialStatus.create(:id => 3)
ss.social_status_translations.create(:locale => 'en', :name => 'Unknown')
ss.social_status_translations.create(:locale => 'ka', :name => 'Unknown')

# Under the Influence

Substance.delete_all
SubstanceTranslation.delete_all

ui = Substance.create(:id => 1)
ui.substance_translations.create(:locale => 'en', :name => 'None')
ui.substance_translations.create(:locale => 'ka', :name => 'None')

ui = Substance.create(:id => 2)
ui.substance_translations.create(:locale => 'en', :name => 'Alcohol')
ui.substance_translations.create(:locale => 'ka', :name => 'Alcohol')

ui = Substance.create(:id => 3)
ui.substance_translations.create(:locale => 'en', :name => 'Prescribed drugs')
ui.substance_translations.create(:locale => 'ka', :name => 'Prescribed drugs')

ui = Substance.create(:id => 4)
ui.substance_translations.create(:locale => 'en', :name => 'Illegal drugs')
ui.substance_translations.create(:locale => 'ka', :name => 'Illegal drugs')

ui = Substance.create(:id => 5)
ui.substance_translations.create(:locale => 'en', :name => 'Marijuana')
ui.substance_translations.create(:locale => 'ka', :name => 'Marijuana')

ui = Substance.create(:id => 6)
ui.substance_translations.create(:locale => 'en', :name => 'Multiple substances')
ui.substance_translations.create(:locale => 'ka', :name => 'Multiple substances')

ui = Substance.create(:id => 7)
ui.substance_translations.create(:locale => 'en', :name => 'Other')
ui.substance_translations.create(:locale => 'ka', :name => 'Other')

ui = Substance.create(:id => 8)
ui.substance_translations.create(:locale => 'en', :name => 'Unknown')
ui.substance_translations.create(:locale => 'ka', :name => 'Unknown')

# Districts

District.delete_all
DistrictTranslation.delete_all

d = District.create(:id => 1)
d.district_translations.create(:locale => 'en', :name => "Chughureti")
d.district_translations.create(:locale => 'ka', :name => "Chughureti")

d = District.create(:id => 2)
d.district_translations.create(:locale => 'en', :name => "Vake")
d.district_translations.create(:locale => 'ka', :name => "Vake")

d = District.create(:id => 3)
d.district_translations.create(:locale => 'en', :name => "Saburtalo")
d.district_translations.create(:locale => 'ka', :name => "Saburtalo")

d = District.create(:id => 4)
d.district_translations.create(:locale => 'en', :name => "Mtatsminda")
d.district_translations.create(:locale => 'ka', :name => "Mtatsminda")

d = District.create(:id => 5)
d.district_translations.create(:locale => 'en', :name => "Isani")
d.district_translations.create(:locale => 'ka', :name => "Isani")

d = District.create(:id => 6)
d.district_translations.create(:locale => 'en', :name => "Gldani")
d.district_translations.create(:locale => 'ka', :name => "Gldani")

d = District.create(:id => 7)
d.district_translations.create(:locale => 'en', :name => "Nadzaladevi")
d.district_translations.create(:locale => 'ka', :name => "Nadzaladevi")

d = District.create(:id => 8)
d.district_translations.create(:locale => 'en', :name => "Samgori")
d.district_translations.create(:locale => 'ka', :name => "Samgori")

d = District.create(:id => 9)
d.district_translations.create(:locale => 'en', :name => "Didube")
d.district_translations.create(:locale => 'ka', :name => "Didube")

d = District.create(:id => 10)
d.district_translations.create(:locale => 'en', :name => "Krtsanisi")
d.district_translations.create(:locale => 'ka', :name => "Krtsanisi")

d = District.create(:id => 11)
d.district_translations.create(:locale => 'en', :name => "Khelvachauri")
d.district_translations.create(:locale => 'ka', :name => "Khelvachauri")

d = District.create(:id => 12)
d.district_translations.create(:locale => 'en', :name => "Kobuleti")
d.district_translations.create(:locale => 'ka', :name => "Kobuleti")

d = District.create(:id => 13)
d.district_translations.create(:locale => 'en', :name => "Akhaltsikhe")
d.district_translations.create(:locale => 'ka', :name => "Akhaltsikhe")

d = District.create(:id => 14)
d.district_translations.create(:locale => 'en', :name => "Ambrolauri")
d.district_translations.create(:locale => 'ka', :name => "Ambrolauri")

d = District.create(:id => 15)
d.district_translations.create(:locale => 'en', :name => "Gori")
d.district_translations.create(:locale => 'ka', :name => "Gori")

d = District.create(:id => 16)
d.district_translations.create(:locale => 'en', :name => "Tskaltubo")
d.district_translations.create(:locale => 'ka', :name => "Tskaltubo")

d = District.create(:id => 17)
d.district_translations.create(:locale => 'en', :name => "Baghdati")
d.district_translations.create(:locale => 'ka', :name => "Baghdati")

d = District.create(:id => 18)
d.district_translations.create(:locale => 'en', :name => "Terjola")
d.district_translations.create(:locale => 'ka', :name => "Terjola")

d = District.create(:id => 19)
d.district_translations.create(:locale => 'en', :name => "Mtskheta")
d.district_translations.create(:locale => 'ka', :name => "Mtskheta")

d = District.create(:id => 20)
d.district_translations.create(:locale => 'en', :name => "Ozurgeti")
d.district_translations.create(:locale => 'ka', :name => "Ozurgeti")

d = District.create(:id => 21)
d.district_translations.create(:locale => 'en', :name => "Telavi")
d.district_translations.create(:locale => 'ka', :name => "Telavi")

d = District.create(:id => 22)
d.district_translations.create(:locale => 'en', :name => "Zugdidi")
d.district_translations.create(:locale => 'ka', :name => "Zugdidi")

d = District.create(:id => 23)
d.district_translations.create(:locale => 'en', :name => "Mestia")
d.district_translations.create(:locale => 'ka', :name => "Mestia")

d = District.create(:id => 24)
d.district_translations.create(:locale => 'en', :name => "Lentekhi")
d.district_translations.create(:locale => 'ka', :name => "Lentekhi")

d = District.create(:id => 25)
d.district_translations.create(:locale => 'en', :name => "Tsalenjikha")
d.district_translations.create(:locale => 'ka', :name => "Tsalenjikha")

d = District.create(:id => 26)
d.district_translations.create(:locale => 'en', :name => "Chkhorotsku")
d.district_translations.create(:locale => 'ka', :name => "Chkhorotsku")

d = District.create(:id => 27)
d.district_translations.create(:locale => 'en', :name => "Martvili")
d.district_translations.create(:locale => 'ka', :name => "Martvili")

d = District.create(:id => 28)
d.district_translations.create(:locale => 'en', :name => "Tsageri")
d.district_translations.create(:locale => 'ka', :name => "Tsageri")

d = District.create(:id => 29)
d.district_translations.create(:locale => 'en', :name => "Khoni")
d.district_translations.create(:locale => 'ka', :name => "Khoni")

d = District.create(:id => 30)
d.district_translations.create(:locale => 'en', :name => "Abasha")
d.district_translations.create(:locale => 'ka', :name => "Abasha")

d = District.create(:id => 31)
d.district_translations.create(:locale => 'en', :name => "Senaki")
d.district_translations.create(:locale => 'ka', :name => "Senaki")

d = District.create(:id => 32)
d.district_translations.create(:locale => 'en', :name => "Samtredia")
d.district_translations.create(:locale => 'ka', :name => "Samtredia")

d = District.create(:id => 33)
d.district_translations.create(:locale => 'en', :name => "Lanchkhuti")
d.district_translations.create(:locale => 'ka', :name => "Lanchkhuti")

d = District.create(:id => 34)
d.district_translations.create(:locale => 'en', :name => "Vani")
d.district_translations.create(:locale => 'ka', :name => "Vani")

d = District.create(:id => 35)
d.district_translations.create(:locale => 'en', :name => "Chokhatauri")
d.district_translations.create(:locale => 'ka', :name => "Chokhatauri")

d = District.create(:id => 36)
d.district_translations.create(:locale => 'en', :name => "Khulo")
d.district_translations.create(:locale => 'ka', :name => "Khulo")

d = District.create(:id => 37)
d.district_translations.create(:locale => 'en', :name => "Adigeni")
d.district_translations.create(:locale => 'ka', :name => "Adigeni")

d = District.create(:id => 38)
d.district_translations.create(:locale => 'en', :name => "Shuakhevi")
d.district_translations.create(:locale => 'ka', :name => "Shuakhevi")

d = District.create(:id => 39)
d.district_translations.create(:locale => 'en', :name => "Keda")
d.district_translations.create(:locale => 'ka', :name => "Keda")

d = District.create(:id => 40)
d.district_translations.create(:locale => 'en', :name => "Khobi")
d.district_translations.create(:locale => 'ka', :name => "Khobi")

d = District.create(:id => 41)
d.district_translations.create(:locale => 'en', :name => "Tkibuli")
d.district_translations.create(:locale => 'ka', :name => "Tkibuli")

d = District.create(:id => 42)
d.district_translations.create(:locale => 'en', :name => "Chiatura")
d.district_translations.create(:locale => 'ka', :name => "Chiatura")

d = District.create(:id => 43)
d.district_translations.create(:locale => 'en', :name => "Terjola")
d.district_translations.create(:locale => 'ka', :name => "Terjola")

d = District.create(:id => 44)
d.district_translations.create(:locale => 'en', :name => "Kharagauli")
d.district_translations.create(:locale => 'ka', :name => "Kharagauli")

d = District.create(:id => 45)
d.district_translations.create(:locale => 'en', :name => "Borjomi")
d.district_translations.create(:locale => 'ka', :name => "Borjomi")

d = District.create(:id => 46)
d.district_translations.create(:locale => 'en', :name => "Aspindza")
d.district_translations.create(:locale => 'ka', :name => "Aspindza")

d = District.create(:id => 47)
d.district_translations.create(:locale => 'en', :name => "Akhalkalaki")
d.district_translations.create(:locale => 'ka', :name => "Akhalkalaki")

d = District.create(:id => 48)
d.district_translations.create(:locale => 'en', :name => "Oni")
d.district_translations.create(:locale => 'ka', :name => "Oni")

d = District.create(:id => 49)
d.district_translations.create(:locale => 'en', :name => "Sachkhere")
d.district_translations.create(:locale => 'ka', :name => "Sachkhere")

d = District.create(:id => 50)
d.district_translations.create(:locale => 'en', :name => "Khashuri")
d.district_translations.create(:locale => 'ka', :name => "Khashuri")

d = District.create(:id => 51)
d.district_translations.create(:locale => 'en', :name => "Java")
d.district_translations.create(:locale => 'ka', :name => "Java")

d = District.create(:id => 52)
d.district_translations.create(:locale => 'en', :name => "Akhalgori")
d.district_translations.create(:locale => 'ka', :name => "Akhalgori")

d = District.create(:id => 53)
d.district_translations.create(:locale => 'en', :name => "Kornisi")
d.district_translations.create(:locale => 'ka', :name => "Kornisi")

d = District.create(:id => 54)
d.district_translations.create(:locale => 'en', :name => "Tskhinvali")
d.district_translations.create(:locale => 'ka', :name => "Tskhinvali")

d = District.create(:id => 55)
d.district_translations.create(:locale => 'en', :name => "Kareli")
d.district_translations.create(:locale => 'ka', :name => "Kareli")

d = District.create(:id => 56)
d.district_translations.create(:locale => 'en', :name => "Akhmeta")
d.district_translations.create(:locale => 'ka', :name => "Akhmeta")

d = District.create(:id => 57)
d.district_translations.create(:locale => 'en', :name => "Tianeti")
d.district_translations.create(:locale => 'ka', :name => "Tianeti")

d = District.create(:id => 58)
d.district_translations.create(:locale => 'en', :name => "Kvareli")
d.district_translations.create(:locale => 'ka', :name => "Kvareli")

d = District.create(:id => 59)
d.district_translations.create(:locale => 'en', :name => "Lagodekhi")
d.district_translations.create(:locale => 'ka', :name => "Lagodekhi")

d = District.create(:id => 60)
d.district_translations.create(:locale => 'en', :name => "Sagarejo")
d.district_translations.create(:locale => 'ka', :name => "Sagarejo")

d = District.create(:id => 61)
d.district_translations.create(:locale => 'en', :name => "Gurjaani")
d.district_translations.create(:locale => 'ka', :name => "Gurjaani")

d = District.create(:id => 62)
d.district_translations.create(:locale => 'en', :name => "Tsalka")
d.district_translations.create(:locale => 'ka', :name => "Tsalka")

d = District.create(:id => 63)
d.district_translations.create(:locale => 'en', :name => "Sighnaghi")
d.district_translations.create(:locale => 'ka', :name => "Sighnaghi")

d = District.create(:id => 64)
d.district_translations.create(:locale => 'en', :name => "Dedoplistskaro")
d.district_translations.create(:locale => 'ka', :name => "Dedoplistskaro")

d = District.create(:id => 65)
d.district_translations.create(:locale => 'en', :name => "Dmanisi")
d.district_translations.create(:locale => 'ka', :name => "Dmanisi")

d = District.create(:id => 66)
d.district_translations.create(:locale => 'en', :name => "Marneuli")
d.district_translations.create(:locale => 'ka', :name => "Marneuli")

d = District.create(:id => 67)
d.district_translations.create(:locale => 'en', :name => "Ninotsminda")
d.district_translations.create(:locale => 'ka', :name => "Ninotsminda")

d = District.create(:id => 68)
d.district_translations.create(:locale => 'en', :name => "Bolnisi")
d.district_translations.create(:locale => 'ka', :name => "Bolnisi")

d = District.create(:id => 69)
d.district_translations.create(:locale => 'en', :name => "Gardabani")
d.district_translations.create(:locale => 'ka', :name => "Gardabani")

d = District.create(:id => 70)
d.district_translations.create(:locale => 'en', :name => "Kazbegi")
d.district_translations.create(:locale => 'ka', :name => "Kazbegi")

d = District.create(:id => 71)
d.district_translations.create(:locale => 'en', :name => "Dusheti")
d.district_translations.create(:locale => 'ka', :name => "Dusheti")

d = District.create(:id => 72)
d.district_translations.create(:locale => 'en', :name => "Kaspi")
d.district_translations.create(:locale => 'ka', :name => "Kaspi")

d = District.create(:id => 73)
d.district_translations.create(:locale => 'en', :name => "Tetritskaro")
d.district_translations.create(:locale => 'ka', :name => "Tetritskaro")

d = District.create(:id => 74)
d.district_translations.create(:locale => 'en', :name => "Gagra")
d.district_translations.create(:locale => 'ka', :name => "Gagra")

d = District.create(:id => 75)
d.district_translations.create(:locale => 'en', :name => "Gudauta")
d.district_translations.create(:locale => 'ka', :name => "Gudauta")

d = District.create(:id => 76)
d.district_translations.create(:locale => 'en', :name => "Sukhumi")
d.district_translations.create(:locale => 'ka', :name => "Sukhumi")

d = District.create(:id => 77)
d.district_translations.create(:locale => 'en', :name => "Gulripshi")
d.district_translations.create(:locale => 'ka', :name => "Gulripshi")

d = District.create(:id => 78)
d.district_translations.create(:locale => 'en', :name => "Ochamchire")
d.district_translations.create(:locale => 'ka', :name => "Ochamchire")

d = District.create(:id => 79)
d.district_translations.create(:locale => 'en', :name => "Gali")
d.district_translations.create(:locale => 'ka', :name => "Gali")

d = District.create(:id => 80)
d.district_translations.create(:locale => 'en', :name => "Zestaponi")
d.district_translations.create(:locale => 'ka', :name => "Zestaponi")

d = District.create(:id => 81)
d.district_translations.create(:locale => 'en', :name => "Batumi")
d.district_translations.create(:locale => 'ka', :name => "Batumi")
