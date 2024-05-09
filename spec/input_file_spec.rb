# frozen_string_literal: true

require "input_file"

RSpec.describe "InputFile" do
  describe "#next_entry" do
    before do
      @test_file = File.open("input/test_file.txt", "w") do |file|
        file.write "    _  _     _  _  _  _  _ \n"
        file.write "  | _| _||_||_ |_   ||_||_|\n"
        file.write "  ||_  _|  | _||_|  ||_| _|\n"
        file.write "\n"
      end

      @input_file = InputFile.new("input/test_file.txt")
      @input_file.open
    end

    it "returns the next 4 lines as an array of four lines" do
      expected_entry_content = [
        "    _  _     _  _  _  _  _ ",
        "  | _| _||_||_ |_   ||_||_|",
        "  ||_  _|  | _||_|  ||_| _|",
        ""
      ]

      expect(@input_file.next_entry_content).to eq(expected_entry_content)
    end

    after do
      @input_file.close

      File.delete("input/test_file.txt")
    end
  end
end
