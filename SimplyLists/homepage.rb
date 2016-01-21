require './basepage.rb'

class Homepage < Basepage

  def GoToLogin
    @browser.button(:value => 'Login »').click
    self
  end

end