require File.dirname(__FILE__) + '/basepage.rb'
require File.dirname(__FILE__) + '/flightconfirmationpage.rb'
require './assertions.rb'

class Bookflightpage < Basepage

  def make_purchase (numberOfPassengers)

    @browser.text_field(:name => 'passFirst0').set "Dennis"

    @browser.button(:name => 'buyFlights').click
    # assert_includes 'Welcome: Mercury Tours', myloginpage.the_title
    Flightconfirmationpage.new @browser
  end

end