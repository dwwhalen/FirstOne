require './basepage.rb'

class Loginpage < Basepage

  def go_to_login
    @browser.button(:value => 'Login »').click
    self
  end

end