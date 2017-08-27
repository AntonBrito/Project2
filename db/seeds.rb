# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email: 'jesseBrito@gmail.com', password: 'praiacapital104', provider: true)
Appoitment.create(date: '2017-08-26', user_id: 1)
Event.create(start_date: '2017-08-26', end_date: '2017-08-26', name: 'Yoga', info: 'information')
