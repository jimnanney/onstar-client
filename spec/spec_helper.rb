$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'onstar'
require 'onstar/version'
#Dir[File.expand_path('../support/*/.rb', __FILE__)].each{|f| require f}
require 'rspec'
require 'vcr'
require 'webmock/rspec'
WebMock.disable_net_connect!
VCR.configure do |config|
  config.hook_into :webmock
  config.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
  config.configure_rspec_metadata!
  config.preserve_exact_body_bytes { true }
  config.default_cassette_options = {
    :re_record_interval => 60*60*24*180
  }
  config.allow_http_connections_when_no_cassette = false
end
RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
end
