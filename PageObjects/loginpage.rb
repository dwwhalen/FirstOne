require File.dirname(__FILE__) + '/basepage.rb'
require File.dirname(__FILE__) + '/searchflightpage.rb'
require './assertions.rb'

class Loginpage < Basepage

  # def go_to_login
  #   @browser.button(:value => 'Login »').click
  #   # assert_match 'Welcome: Mercury Tours', myloginpage.the_title, "no match!"
  #   assert_includes 'Welcome: Mercury Tours', myloginpage.the_title
  #   self
  # end

  def login id, password
    @browser.text_field(:name => 'userName').set id
    @browser.text_field(:name => 'password').set password
    @browser.button(:name => 'login').click
    Searchflightpage.new @browser
  end

end