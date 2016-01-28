
require 'watir-webdriver'
require 'minitest/autorun'

class Basepage

  def initialize(url)
  @browser = Watir::Browser.new :firefox
  @browser.goto url
  @title = @browser.title
  end

  def the_title
    @title
  end

  def close
    @browser.close
  end

end