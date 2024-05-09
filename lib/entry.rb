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

  TWO_AS_SYMBOLS = [
    " _ ",
    " _|",
    "|_ "
  ]

  THREE_AS_SYMBOLS = [
    " _ ",
    " _|",
    " _|"
  ]

  FOUR_AS_SYMBOLS = [
    "   ",
    "|_|",
    "  |"
  ]

  FIVE_AS_SYMBOLS = [
    " _ ",
    "|_ ",
    " _|"
  ]

  SIX_AS_SYMBOLS = [
    " _ ",
    "|_ ",
    "|_|"
  ]

  SEVEN_AS_SYMBOLS = [
    " _ ",
    "  |",
    "  |"
  ]

  EIGHT_AS_SYMBOLS = [
    " _ ",
    "|_|",
    "|_|"
  ]

  NINE_AS_SYMBOLS = [
    " _ ",
    "|_|",
    " _|"
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

      if current_number == TWO_AS_SYMBOLS
        account_number += "2"
      end

      if current_number == THREE_AS_SYMBOLS
        account_number += "3"
      end

      if current_number == FOUR_AS_SYMBOLS
        account_number += "4"
      end

      if current_number == FIVE_AS_SYMBOLS
        account_number += "5"
      end

      if current_number == SIX_AS_SYMBOLS
        account_number += "6"
      end

      if current_number == SEVEN_AS_SYMBOLS
        account_number += "7"
      end

      if current_number == EIGHT_AS_SYMBOLS
        account_number += "8"
      end

      if current_number == NINE_AS_SYMBOLS
        account_number += "9"
      end

      start += 3
      offset += 3
    end

    account_number
  end
end
