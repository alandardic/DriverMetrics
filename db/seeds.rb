# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Driver.create!([
  {
    name: 'Travis Bikel',
    image_file_name: 'travis_bikel.jpg',
    phone_number: '1-212-5559867',
    joined_on: "1976-02-08"
  },
  {
  	name: 'Rami Ovadia',
    image_file_name: 'rami_ovadia.jpg',
    phone_number: '09-5351388',
    joined_on: "2011-12-18"
  },
  {
	name: 'Ido Rosenblum', 
	image_file_name: 'ido_rosenblum.jpg',
	phone_number: '03-6421353', 
	joined_on: "2007-05-19"
  },
  {
	name: 'Avi Hanahag',
    image_file_name: 'avi_hanahag.jpg',
    phone_number: '08-8583154', 
    joined_on: "2012-05-09"
  },
  {
	name: 'Ilana Berkovits',
    image_file_name: 'ilana_berkovits.jpg',
	phone_number: '04-6889867', 
	joined_on: "2010-04-04"
  }
])

driver = Driver.find_by(name: 'Travis Bikel')
driver.reviews.create!(name: "Roger Ebert", stars: 5, comment: "He drove like a maniac!!! It was the best ride of my life")
driver.reviews.create!(name: "Gene Siskel", stars: 1, comment: "he was rude and violent")
driver.reviews.create!(name: "Peter Travers", stars: 2, comment: "Terrible driver, he reminded me Tony montana")
driver = Driver.find_by(name: 'Ido Rosenblum')
driver.reviews.create!(name: "Elvis Mitchell", stars: 5, comment: "Ido is a really cool dude - i have enjoyed every moment in the taxi")