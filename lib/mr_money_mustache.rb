require "mr_money_mustache/version"

module MrMoneyMustache
  class Api
    attr_accessor :browser

    def initialize
      @browser = Mechanize.new
      @urls = {
        start: 'http://www.mrmoneymustache.com/2013/02/22/getting-rich-from-zero-to-hero-in-one-blog-post/',
        random: 'http://www.mrmoneymustache.com/?random&post_type=post&post_status=publish',
        latest: 'http://www.mrmoneymustache.com/blog',
        home: 'http://www.mrmoneymustache.com'
      }
    end

    def home
      @browser.get(@urls[:home]).content
    end

    def start
      puts get_post @browser.get(@urls[:start])
    end

    def random
      puts get_post @browser.get(@urls[:random]) 
    end

    def latest
      link = @browser.get(@urls[:latest]).links[16].uri.to_s
      puts get_post @browser.get(link)
    end

    private
    def get_post link
      link.at('.post_box').content
    end
  end
end

