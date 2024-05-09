# frozen_string_literal: true

require "entry"
class Application
  def run_with_file(file_path)
    output = ""

    File.open(file_path) do |file|
      entry_content = []
      index = 0

      file.each_line do |line|
        entry_content << line.chomp

        if index == 3
          entry = Entry.new(entry_content)
          output += "#{entry.account_number}\n"

          index = 0
          entry_content = []
        else
          index += 1
        end
      end
    end

    output
  end
end
