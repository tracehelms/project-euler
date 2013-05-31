require 'spec_helper'

describe Problem1 do
  it "finds the sum of numbers below 11 divisible by 10" do
    Problem1.new.sum_it(11, [10]).should == 10
  end

  it "finds the sum of numbers below 11 divisible by 3 and 5" do
    Problem1.new.sum_it(11, [3, 5]).should == 33
  end

  it "finds the sum of numbers below 1000 divisible by 3 and 5" do
    Problem1.new.sum_it(1000, [3, 5]).should == 233168
  end

  it "should handle 0 properly" do
    Problem1.new.sum_it(0, [3, 5]).should == 0
  end

end
