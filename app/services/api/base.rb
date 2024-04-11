# frozen_string_literal: true

# Moduel for communication with the BattleTech API
module Api
  require 'net/http'

  # Class for access to the BattleTech Api
  class Base
    def initialize
      @base_url = ENV.fetch('BATTLETECH_API', 'https://api.battletech.dev')
    end

    private

    attr_reader :base_url

    def get(url:)
      uri = URI.join(base_url, url)
      response = Net::HTTP.get(uri)
      JSON.parse(response)
    end
  end
end
