# Contains the code for the bogosort
module Bogosort
  VERSION = "0.1.0"

  # Checks if the array is sorted
  private def self.sorted(array)
    array.each_cons(2).all? { |i| i[0] <= i[1] }
  end

  # Sorts the array using bogosort
  #
  # ```
  # Bogosort.sort([3, 2, 1]) # => [1, 2, 3]
  # ```
  def self.sort(array : Array)
    until sorted array
      array.shuffle!
    end
    array
  end
end
