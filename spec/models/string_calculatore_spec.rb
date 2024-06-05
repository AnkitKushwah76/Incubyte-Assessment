require 'rails_helper'

RSpec.describe StringCalculator, type: :model do
  describe "#add" do
    context "with empty input" do
      it "returns 0" do
        expect(StringCalculator.add("")).to eq(0)
      end
    end
  end
end