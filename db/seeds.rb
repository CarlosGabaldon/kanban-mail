# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user = User.create(:email => 'elephant@jungle.com')

weekly_status = Item.new(:subject => "Weekly Status Report for 5/10/3012")
weekly_status.save
sales_figures = Item.new(:subject => "Year end sales figures for year end 3011")
sales_figures.save

user.items << weekly_status
user.items << sales_figures
user.save
