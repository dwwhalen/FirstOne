require 'watir-webdriver'

class Basepage

  @browser

  def initialize(the_browser)
    # @browser = Watir::Browser.new :firefox if @browser.nil?
    @browser = the_browser
  end

  def visit(url)
    # @browser = Watir::Browser.new :firefox
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