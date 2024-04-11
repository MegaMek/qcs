# frozen_string_literal: true

# Moduel for communication with the Eras Endpoint
module Api
  # Class for access to the BattleTech Api
  class Eras < Api::Base
    def all
      get(url: '/battletech/eras').sort_by { |era| era['endYear'].positive? ? era['endYear'] : 9999 }
    end

    def show(id:)
      get(url: "/battletech/eras/#{id}")
    end
  end
end
