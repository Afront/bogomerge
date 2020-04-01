require "./spec_helper"

describe Bogosort do
  it "works for floats" do
    Bogosort.sort([2.5, 1]).should eq([1, 2.5])
    Bogosort.sort([1.0]).should eq([1.0])
    Bogosort.sort([51.2, 2.1, 3.4, Math::PI]).should eq([2.1, Math::PI, 3.4, 51.2])
  end

  it "works for ints" do
    Bogosort.sort([2, 1]).should eq([1, 2])
    Bogosort.sort([1]).should eq([1])
    Bogosort.sort([5, 2, 3]).should eq([2, 3, 5])
  end

  it "works for strings" do
    Bogosort.sort(%w[they are you]).should eq(%w[are they you])
  end
end
