require 'byebug'

# Logic for the class
class LongestLine
  def initialize(filename)
    @file = File.readlines(filename)
    @number_lines = @file.shift.chomp.to_i
  end

  def hashify_file
    @file_index_by_length = {}
    @file.each do |value|
      if @file_index_by_length[value.length]
        @file_index_by_length[value.length].push(value)
      else
        @file_index_by_length[value.length] = [value]
      end
    end
  end

  def longest_lines
    lines_to_get = @file_index_by_length.keys.sort.reverse[0...@number_lines]
    results = []
    lines_to_get.each do |line_length|
      results.concat(@file_index_by_length[line_length])
    end
    results[0...@number_lines].join('')
  end
end

longest_line = LongestLine.new(ARGV[0])
longest_line.hashify_file
puts longest_line.longest_lines
