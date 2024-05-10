# frozen_string_literal: true

class Entry
  SYMBOLS_TO_NUMBERS = {
    [
      " _ ",
      "| |",
      "|_|"
    ] => "0",
    [
      "   ",
      "  |",
      "  |"
    ] => "1",
    [
      " _ ",
      " _|",
      "|_ "
    ] => "2",
    [
      " _ ",
      " _|",
      " _|"
    ] => "3",
    [
      "   ",
      "|_|",
      "  |"
    ] => "4",
    [
      " _ ",
      "|_ ",
      " _|"
    ] => "5",
    [
      " _ ",
      "|_ ",
      "|_|"
    ] => "6",
    [
      " _ ",
      "  |",
      "  |"
    ] => "7",
    [
      " _ ",
      "|_|",
      "|_|"
    ] => "8",
    [
      " _ ",
      "|_|",
      " _|"
    ] => "9"
  }

  def initialize(content)
    @content = content
  end

  def account_number
    content_with_symbols = @content[0..2]
    account_number = ""

    current_number_start_position = 0
    current_number_end_position = 2

    tot_numbers_on_single_line = 9
    single_number_width_on_single_line = 3
 
    tot_numbers_on_single_line.times do
      current_number = content_with_symbols.map { |line| line[current_number_start_position..current_number_end_position] }

      account_number += SYMBOLS_TO_NUMBERS[current_number]

      current_number_start_position += single_number_width_on_single_line
      current_number_end_position += single_number_width_on_single_line
    end

    account_number
  end
end
