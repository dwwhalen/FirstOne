

class Basepage

  def initialize(url)
  @browser = Watir::Browser.new
  @browser.goto url
  @title = @browser.title
  end

  def theTitle
    @title
  end

  def close
    @browser.close
  end

end