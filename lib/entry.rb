# frozen_string_literal: true

class Entry
  NUMBERS_AS_SYMBOLS = {
    "0" => [
      " _ ",
      "| |",
      "|_|"
    ],
    "1" => [
      "   ",
      "  |",
      "  |"
    ],
    "2" => [
      " _ ",
      " _|",
      "|_ "
    ],
    "3" => [
      " _ ",
      " _|",
      " _|"
    ],
    "4" => [
      "   ",
      "|_|",
      "  |"
    ],
    "5" => [
      " _ ",
      "|_ ",
      " _|"
    ],
    "6" => [
      " _ ",
      "|_ ",
      "|_|"
    ],
    "7" => [
      " _ ",
      "  |",
      "  |"
    ],
    "8" => [
      " _ ",
      "|_|",
      "|_|"
    ],
    "9" => [
      " _ ",
      "|_|",
      " _|"
    ]
  }

  def initialize(content)
    @content = content
  end

  def account_number
    content_with_symbols = @content[0..2]

    start = 0
    offset = 2
    account_number = ""

    9.times do
      current_number = content_with_symbols.map { |line| line[start..offset] }

      NUMBERS_AS_SYMBOLS.each_pair do |key, value|
        if current_number == value
          account_number += key
        end
      end

      start += 3
      offset += 3
    end

    account_number
  end
end
