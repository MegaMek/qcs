# frozen_string_literal: true

# Handles Factions for Index and Show
class FactionsController < ApplicationController
  # All Factions
  def index
    @factions = api.all
  end

  # Inidividual Faction
  def show
    @faction = api.show(id: params[:id])
  end

  private

  def api
    @api ||= Api::Factions.new
  end
end
