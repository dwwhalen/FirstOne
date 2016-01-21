#http://watirmelon.com/2014/03/31/a-ruby-testing-framework-from-scratch-in-15-minutes/
require 'watir-webdriver'
# require './assertions.rb'
# require './homepage.rb'
require "#{File.dirname(__FILE__)}/assertions.rb"
require "#{File.dirname(__FILE__)}/homepage.rb"

myhomepage = Homepage.new('https://localhost:44300/')

 # assert('that the welcome message exists') { Homepage.welcome.exists? }
 # assert('that the welcome message is visible') { Homepage.welcome.visible? }
# assert('that the welcome message text is correct') { Homepage.title.text == 'Welcome BNE Testers!' }
assertIncludes('Simply Lists', myhomepage.theTitle())

myloginpage = myhomepage.GoToLogin()
puts myloginpage.class

myhomepage.close