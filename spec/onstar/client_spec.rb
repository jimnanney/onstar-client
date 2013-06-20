require 'spec_helper'

describe Onstar::Client do
  it 'should have a version number' do
    Onstar::Client::VERSION.should_not be_nil
  end

  it 'should do something useful' do
    false.should be_true
  end
end
