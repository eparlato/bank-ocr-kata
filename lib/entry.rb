# frozen_string_literal: true

class Entry
  ZERO_AS_SYMBOLS = [
    " _ ",
    "| |",
    "|_|"
  ]

  ONE_AS_SYMBOLS = [
    "   ",
    "  |",
    "  |"
  ]

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

      if current_number == ZERO_AS_SYMBOLS
        account_number += "0"
      end

      if current_number == ONE_AS_SYMBOLS
        account_number += "1"
      end

      start += 3
      offset += 3
    end

    account_number
  end
end
