require 'spec_helper'

describe Problem2 do
  it "finds the sum of odd Fibonacci numbers under 14" do
    Problem2.new.fibonacci_sum(14, :odd).should == 23
  end

  it "finds the sum of even Fibonacci numbers under 14" do
    Problem2.new.fibonacci_sum(14, :even).should == 10
  end

  it "finds the sum of all Fibonacci numbers below 14" do
    Problem2.new.fibonacci_sum(14).should == 33
  end

  it "should handle 0 properly" do
    Problem2.new.fibonacci_sum(0).should == 0
  end
end

