require File.dirname(__FILE__) + '/basepage.rb'
require './assertions.rb'

class Flightconfirmationpage < Basepage

  def is_succesful ()

    @browser.text.include? 'Your itinerary has been booked!'

  end

end