require 'rails_helper'

RSpec.describe CovidStat, type: :model do
  it "should be valid" do
    expect(CovidStat.new).to be_valid
  end
end
