require 'rails_helper'

RSpec.describe "Api::V1::CovidStats", type: :request do
  describe "GET /index" do
    it "should be ok" do
      get api_v1_covid_stats_path
      expect(response).to have_http_status(:ok)
    end
  end
end
