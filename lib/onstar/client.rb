require "onstar/client/version"
require 'oauth2'

module Onstar
  module Client
    def self.connect(api_key, secret)

      client = OAuth2::Client.new(api_key, secret, 
                                  :site => "https://developer.gm.com/", 
                                  :token_url => '/api/v1/oauth/access_token')
      client.connection.headers['Accept'] = 'application/json'
      client.client_credentials.get_token(:headers => {'Accept' => 'application/json'})
    end

  end
end
