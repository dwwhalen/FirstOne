require File.dirname(__FILE__) + '/basepage.rb'
require File.dirname(__FILE__) + '/selectflightpage.rb'
require './assertions.rb'

class Searchflightpage < Basepage

  def search_for_flight (number_of_passengers, from_city, from_date, to_city, to_date)
    @browser.select_list(:name => 'passCount').select number_of_passengers

    @browser.select_list(:name => 'fromPort').select from_city
    @browser.select_list(:name => 'fromMonth').select_value from_date.month
    @browser.select_list(:name => 'fromDay').select from_date.day

    @browser.select_list(:name => 'toPort').select to_city
    @browser.select_list(:name => 'toMonth').select_value to_date.month
    @browser.select_list(:name => 'toDay').select to_date.day

    @browser.radio(:tag_name=>"servClass", :value => 'Business').set

    @browser.button(:name => 'findFlights').click
    # assert_includes 'Welcome: Mercury Tours', myloginpage.the_title
    Selectflightpage.new @browser
  end

end