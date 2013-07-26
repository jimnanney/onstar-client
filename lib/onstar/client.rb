require 'onstar/version'
require 'oauth2'
require 'rest-client'

module Onstar
  class Client
    attr_accessor :secret, :api_key, :token

    def initialize(api_key, secret)
      @secret = secret
      @api_key = api_key
    end

    def connect
      client = OAuth2::Client.new(@api_key, @secret, 
                                  :site => "https://developer.gm.com/", 
                                  :token_url => '/api/v1/oauth/access_token')
      client.connection.headers['Accept'] = 'application/json'
      @token = client.client_credentials.get_token(:headers => {'Accept' => 'application/json'})
    end

    def get_telemtry(vehicle_id)
      # /api/v1/account/vehicles/{vin}/telemetry
      # https://developer.gm.com/api/v1/account/vehicles/1G6DH5E53C0000003/telemetry?begintimestamp= 2012-06-20T14:11:11&endtimestamp=2012-06-20T15:11:11&offset=0&limit=2
            
    end

  end
end
