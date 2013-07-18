require 'onstar/client/version'
require 'httparty'

module Onstar
  def Client
    # Your code goes here...

    include HTTParty
    base_uri = 'https://developer.gm.com'
    headers 'Accept' => 'application/json'

    def initialize(key, secret)
      @auth = { api_key: key, secret: secret }
    end


    def get_access_token
      options.merge!( { basic_auth: @auth } )
      self.class.get('/api/v1/oauth/access_token', @auth)
    end


  end
end
