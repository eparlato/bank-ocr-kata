# frozen_string_literal: true

class InputFile
  def initialize(file_path)
    @file_path = file_path
  end

  def open
    @file = File.open(@file_path)
  end

  def eof?
    @file.eof?
  end

  def next_entry_content
    entry_content = []

    4.times do
      entry_content << @file.readline.chomp
    end

    entry_content
  end

  def close
    @file.close
  end
end
