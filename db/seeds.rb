# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user = User.create(:email => 'elephant@jungle.com')
gmail_account = Account.create account_type:  'gmail',
                         user_name:     'cgabaldon',
                         password:      ''
user.accounts << gmail_account
user.save

github_account = Account.create account_type: 'github',
                        user_name:    'carlosgabaldon',
                        password:     ''
user.accounts << github_account
user.save


#weekly_status = Item.new(:permalink => "weekly-status-report-2012-05-15",
#                         :subject => "Weekly Status Report",
#                         :queue => "NEW",
#                         :body => "This is the weekly status report")
#weekly_status.save
#sales_figures = Item.new(:permalink => "year-end-sales-figures",

#                         :subject => "Year end sales figures",
#                         :queue => "ACTION",
#                         :body => "This is the year end sales figures")
#sales_figures.save

#oscon = Item.new(:permalink => "OSCON 2013",
#                 :subject => "OSCON 2013 Registration Begins",
#                 :queue => "ACTION",
#                 :body => "This will be a great year for OSCON")
#oscon.save

#amazon = Item.new(:permalink => "amazon.com-digital-no-reply-amazon-com-2012-05-15",
#                 :subject => "Amazon.com <digital-no-reply@amazon.com>",
#                 :queue => "NEW",
#                 :body => "Amazon Order..")
#amazon.save

#user.items << weekly_status
#user.items << sales_figures
#user.items << oscon
#user.items << amazon
#user.save
