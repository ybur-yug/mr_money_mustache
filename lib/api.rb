require 'mechanize'

module MrMoneyMustache
  $mmm_url = 'http://www.mrmoneymustache.com'

  class Api
    attr_accessor :browser

    def initialize
      @browser = Mechanize.new
    end

    def home
      @browser.get($mmm_url)
    end

    def random
      @browser.get('http://www.mrmoneymustache.com/?random&post_type=post&post_status=publish')
    end
  end
end
