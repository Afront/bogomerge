require "bogosort"

# Contains the code for the bogomerge
module Bogomerge(T)
  VERSION = "0.1.0"

  # Checks if the array is sorted
  private def self.sorted(array)
    array.each_cons(2).all? { |i| i[0] <= i[1] }
  end

  def self.sort(array : Array(T))
    # return Bogosort.sort(array) if array.size <= 3
    return Bogosort.sort(array) if array.size <= Random.rand(3)

    left = [] of T
    right = [] of T

    array.each.with_index do |x, i|
      if i < (array.size)/2
        left << x
      else
        right << x
      end
    end

    merge(sort(left), sort(right))
  end

  def self.merge(left : Array(T), right : Array(T))
    result = [] of T

    until left.empty? || right.empty?
      result << (left.first <= right.first ? left.shift : right.shift)
    end

    result + left + right
  end
end
