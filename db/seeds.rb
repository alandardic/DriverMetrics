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
	name: 'Ilana Berkowitz',
    image_file_name: 'ilana_berkowitz.jpg',
	phone_number: '04-6889867', 
	joined_on: "2010-04-04"
  }
])