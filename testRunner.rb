#http://watirmelon.com/2014/03/31/a-ruby-testing-framework-from-scratch-in-15-minutes/
require 'watir-webdriver'
require 'minitest'
# require './assertions.rb'
# require './loginpage.rb'
require "#{File.dirname(__FILE__)}/assertions.rb"
require "#{File.dirname(__FILE__)}/loginpage.rb"

myhomepage = Loginpage.new('http://newtours.demoaut.com/')

 # assert('that the welcome message exists') { Loginpage.welcome.exists? }
 # assert('that the welcome message is visible') { Loginpage.welcome.visible? }
# assert('that the welcome message text is correct') { Loginpage.title.text == 'Welcome BNE Testers!' }
assert_includes 'Welcome: Mercury Tours', myhomepage.the_title

# myloginpage = myhomepage.go_to_login
# puts myloginpage.class

myhomepage.close