require "onstar/client/version"
require 'oauth2'

module Onstar
  module Client
    def self.connect(api_key, secret)
      # https://developer.gm.com/oauth/access_token

      client = OAuth2::Client.new(api_key, secret, :site => "https://developer.gm.com/")
       
      client.client_credentials.get_token
    end

  end
end
