
require './loginpage.rb'

Given(/^I access the site http:\/\/newtours\.demoaut\.com\/$/) do
  myloginpage = Loginpage.new('http://newtours.demoaut.com/')
  assert_match 'Welcome: Mercury Tours', myloginpage.the_title, "no match!"
end