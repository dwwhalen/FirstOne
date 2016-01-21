#http://watirmelon.com/2014/03/31/a-ruby-testing-framework-from-scratch-in-15-minutes/
require 'watir-webdriver'
require './assertions.rb'
require './homepage.rb'

myhomepage = Homepage.new('http://msn.com')

 # assert('that the welcome message exists') { Homepage.welcome.exists? }
 # assert('that the welcome message is visible') { Homepage.welcome.visible? }
# assert('that the welcome message text is correct') { Homepage.title.text == 'Welcome BNE Testers!' }
assertIncludes('MSN.com', myhomepage.theTitle())

myhomepage.close