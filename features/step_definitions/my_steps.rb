require './PageObjects/login_page.rb'
require './PageObjects/searchflightpage.rb'
require './PageObjects/selectflightpage.rb'

@my_login_page
@my_search_flight_page
@my_select_flight_page
@my_book_flight_page
@my_flight_confirmation_page

@my_current_browser
@number_of_passengers

Given(/^I access the site "([^"]*)"$/) do |arg|
  @my_current_browser = Watir::Browser.new
  @my_login_page = Login_page.new @my_current_browser
  @my_login_page.visit('http://newtours.demoaut.com/')
end

When(/^I login with id "([^"]*)" and password "([^"]*)"$/) do |id, password|
  @my_search_flight_page = @my_login_page.login id, password
end

And(/^I search for a flight for "([^"]*)" passengers departing from "([^"]*)" on "([^"]*)" and arriving in "([^"]*)" on "([^"]*)"$/) do |number_of_passengers, from_city, from_date, to_city, to_date|
  @number_of_passengers = number_of_passengers
  from_date = Date.parse from_date
  to_date = Date.parse to_date
  @my_select_flight_page = @my_search_flight_page.search_for_flight @number_of_passengers, from_city, from_date, to_city, to_date
end

And(/^I select a flight$/) do
  @my_book_flight_page = @my_select_flight_page.select_default_flights
end

And(/^I book a flight$/) do
  @my_flight_confirmation_page = @my_book_flight_page.make_purchase @number_of_passengers
end

Then(/^I will see my itinerary has been booked$/) do
  @my_flight_confirmation_page.is_succesful
end