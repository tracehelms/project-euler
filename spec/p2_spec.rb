require 'spec_helper'

describe Problem2 do
  it "finds the sum of even Fibonacci numbers under 9" do
    Problem2.new.fibonacci_sum(9, :odd).should == 10
  end

  it "finds the sum of all Fibonacci numbers below 9" do
    Problem2.new.fibonacci_sum(9).should == 20
  end
end

