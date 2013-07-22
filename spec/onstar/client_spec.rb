require 'spec_helper'

describe Onstar::Client do
  it 'should have a version number' do
    Onstar::Client::VERSION.should_not be_nil
  end

  context "with oauth endpoint and valid credentials" do
    let(:api_key) { ENV['GM_API_KEY'] }
    let(:api_secret) { ENV['GM_SECRET_KEY'] }
    let(:client)  { Onstar::Client.new(api_key, api_secret) }

    it "should recieve oauth token" do
      client.connect
      expect(client.token).not_to be_nil
    end
   
    it "should throw no errors"
    it "should be able to access data from endpoint?"
    context "with subscriber account" do
      it "should retrieve telemetry data"
    end
  end

end
