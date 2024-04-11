# frozen_string_literal: true

# Handles Eras for Index and Show
class ErasController < ApplicationController
  # All Eras
  def index
    @eras = api.all
  end

  # Inidividual Era
  def show
    @start_year = params[:start_year]
    @era = api.show(id: params[:id])
  end

  private

  def api
    @api ||= Api::Eras.new
  end
end
