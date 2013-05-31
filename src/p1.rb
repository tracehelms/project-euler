class Problem1
  # Problem 1:
  # Find the sum of all numbers below 'max' divisible by any of 'multiples'
  
  # sum_it
  # Variables:
  # max: the maximum value to be considered for summing
  # multiples: an array of numbers to use for determining divisibility
  #
  # Returns:
  # The sum of all numbers below 'max' divisble by any of 'multiples'
  #
  def sum_it(max, multiples)
    number_to_be_tested = 0
    result = 0

    while number_to_be_tested < max do
      # Test if this number is divisible by each multiple
      for multiple in multiples do
        if number_to_be_tested % multiple == 0 then
          result += number_to_be_tested
          break
        end
      end 
      number_to_be_tested += 1
    end

    result
  end
end

