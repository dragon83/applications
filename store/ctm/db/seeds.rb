# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

 ['Hinduism', 'Christianity', 'Sikhism', 'Jainism', 'Buddhism'].each { |name| Religion.create(name: name) }

 ['Brahmin', 'Kshtriya', 'Vaishya'].each do |name|
    Caste.create(name: name, religion_id: Religion.find_by_name('Hinduism').id)
 end

 ['Aggrawal', 'Vaish', 'Jaiswal'].each do |name|
   SubCaste.create(caste_name: name, caste_id: Caste.find_by_name('Vaishya').id ,religion_id: Religion.find_by_name('Hinduism').id)
 end
 if(!User.find_by_email('pravin.prasad@gmail.com'))
   a = User.new(email:'pravin.prasad@gmail.com',password:'pravin1111')
   a.password_confirmation = 'pravin1111'
   a.save!
   a.confirm!
 end
