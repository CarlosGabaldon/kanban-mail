# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user = User.create(:email => 'elephant@jungle.com')

weekly_status = Item.new(:permalink => "weekly-status-report-2012-05-15",
                         :subject => "Weekly Status Report",
                         :queue => "new",
                         :body => "This is the weekly status report")
weekly_status.save
sales_figures = Item.new(:permalink => "year-end-sales-figures",

                         :subject => "Year end sales figures",
                         :queue => "action",
                         :body => "This is the year end sales figures")
sales_figures.save

oscon = Item.new(:permalink => "OSCON 2013",
                         :subject => "OSCON 2013 Registration Begins",
                         :queue => "action",
                         :body => "This will be a great year for OSCON")
oscon.save
user.items << weekly_status
user.items << sales_figures
user.items << oscon
user.save
