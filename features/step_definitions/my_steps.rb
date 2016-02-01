require './PageObjects/loginpage.rb'
require './PageObjects/searchflightpage.rb'
require './PageObjects/selectflightpage.rb'

@myloginpage
@mysearchflightpage
@myselectflightpage
@mybookflightpage
@myflightconfirmationpage

@my_current_browser
@number_of_passengers

Given(/^I access the site "([^"]*)"$/) do |arg|
  @my_current_browser = Watir::Browser.new
  @myloginpage = Loginpage.new @my_current_browser
  @myloginpage.visit('http://newtours.demoaut.com/')
end

When(/^I login with id "([^"]*)" and password "([^"]*)"$/) do |id, password|
  @mysearchflightpage = @myloginpage.login id, password
end

And(/^I search for a flight for "([^"]*)" passengers departing from "([^"]*)" on "([^"]*)" and arriving in "([^"]*)" on "([^"]*)"$/) do |number_of_passengers, from_city, from_date, to_city, to_date|
  @number_of_passengers = number_of_passengers
  from_date = Date.parse from_date
  to_date = Date.parse to_date
  @myselectflightpage = @mysearchflightpage.search_for_flight @number_of_passengers, from_city, from_date, to_city, to_date
end

And(/^I select a flight$/) do
  @mybookflightpage = @myselectflightpage.select_default_flights
end

And(/^I book a flight$/) do
  @myflightconfirmationpage = @mybookflightpage.make_purchase @number_of_passengers
end

Then(/^I will see my itinerary has been booked$/) do
  @myflightconfirmationpage.is_succesful
end