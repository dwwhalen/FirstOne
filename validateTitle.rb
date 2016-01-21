require 'watir'
require './assertions.rb'

browser = Watir::Browser.new
browser.goto 'http://msn.com'

#puts browser.title == 'Thanks!'
titleContains = 'MSN.com'
assert('The browser title contains ' + titleContains) { browser.title.include? titleContains }

browser.close