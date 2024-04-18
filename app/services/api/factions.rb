# frozen_string_literal: true

# Moduel for communication with the Eras Endpoint
module Api
  # Class for access to the BattleTech Api
  class Factions < Api::Base
    def all
      get(url: '/battletech/factions').sort_by do |faction|
        faction['names'].max_by { |name| name['startYear'].to_i }['name']
      end
    end

    def show(id:)
      get(url: "/battletech/factions/#{id}")
    end
  end
end
