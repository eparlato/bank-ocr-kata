# frozen_string_literal: true

require "entry"
require "input_file"
class Application
  def run_with_file(file_path)
    output = ""

    input_file = InputFile.new("input/input_file.txt")
    input_file.open

    until input_file.eof?
      entry_content = input_file.next_entry_content
      entry = Entry.new(entry_content)
      output += "#{entry.account_number}\n"
    end

    input_file.close

    output
  end
end
