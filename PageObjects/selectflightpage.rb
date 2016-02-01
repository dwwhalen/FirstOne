require File.dirname(__FILE__) + '/basepage.rb'
require File.dirname(__FILE__) + '/bookflightpage.rb'

require './assertions.rb'

class Selectflightpage < Basepage

  def select_default_flights ()

    #@browser.radio(:tag_name=>"outFlight",  :value => 'Business').set

    @browser.button(:name => 'reserveFlights').click

    Bookflightpage.new @browser
    # assert_includes 'Welcome: Mercury Tours', myloginpage.the_title
  end

end