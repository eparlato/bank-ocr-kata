# frozen_string_literal: true

require "Application"

RSpec.describe Application do
  context "when it reads an input file" do
    it "returns a set of account numbers" do
      expected_output =
        "000000000\n" \
        "111111111\n" \
        "123456789\n"

      expect(Application.new.run_with_file("input/input_file.txt")).to eq(expected_output)
    end
  end
end
