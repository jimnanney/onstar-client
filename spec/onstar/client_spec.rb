require 'spec_helper'

API_KEY = ENV['GM_API_KEY']
SECRET = ENV['GM_SECRET_KEY']

describe Onstar::Client do
  subject { described_class.new(API_KEY, SECRET) }

  it 'should have a version number' do
    Onstar::Client::VERSION.should_not be_nil
  end

  it 'should get an access token upon creation' do
    subject.get_auth_token
    subject.should_not be_nil 
  end

  xit 'should do something useful' do
    false.should be_true
  end
end
