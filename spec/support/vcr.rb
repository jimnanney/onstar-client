require 'vcr'
require 'webmock/rspec'
VCR.configure do |config|
  config.hook_into :webmock
  config.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
  config.configure_rspec_metadata!
  config.preserve_exact_body_bytes { true }
  config.default_cassette_options = {
    :re_record_interval => 6.months
  }
  config.allow_http_connections_when_no_cassette = false
end
