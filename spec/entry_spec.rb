# frozen_string_literal: true
require "entry"

RSpec.describe "Entry" do
  describe "#account_number" do
    context "when initialized with a 000000000 content" do
      entry = Entry.new(" _  _  _  _  _  _  _  _  _\n" \
                        "| || || || || || || || || |\n" \
                        "|_||_||_||_||_||_||_||_||_|\n" \
                        "\n")

      it "returns 000000000" do
        expect(entry.account_number).to eq("000000000")
      end
    end
  end
end
