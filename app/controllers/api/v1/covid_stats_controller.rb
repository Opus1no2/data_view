class Api::V1::CovidStatsController < ApplicationController
  def index
    render json: {}, status: :ok
  end
end
