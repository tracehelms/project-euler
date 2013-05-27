class Problem1
  # Problem
  # Find the sum of all numbers below 1000 divisible by either 3 or 5.
  def sumIt(max, multiples)
    #max = 1000
    #multiples = [3, 5]
    numberToBeTested = 0
    result = 0

    while numberToBeTested < max do
      # Test if this number is divisible by each multiple
      for multiple in multiples do
        if numberToBeTested % multiple == 0 then
          result += numberToBeTested
          break
        end
      end 
      numberToBeTested += 1
    end

    result
  end
end

