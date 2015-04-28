require './lib/api.rb'

describe MrMoneyMustache::Api do
  let(:api) { MrMoneyMustache::Api.new }

  context "on creation" do
    it "gets the mmm main page" do
      expect(api.home.uri.to_s).to eq 'http://www.mrmoneymustache.com/'
    end
  end
end
