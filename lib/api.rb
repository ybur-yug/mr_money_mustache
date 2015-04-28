require 'mechanize'

module MrMoneyMustache
  $mmm_url = 'http://www.mrmoneymustache.com'

  class Api
    def initialize
      @browser = Mechanize.new
    end

    def home
      @browser.get($mmm_url)
    end
  end
end
