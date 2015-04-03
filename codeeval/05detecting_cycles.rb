require 'byebug'
class DetectCycles
  def initialize(filename)
    @file = File.readlines(filename).map(&:strip)
  end

end

detect_cycle = DetectCycles.new(ARGV[0])
puts detect_cycle.find_cycle
