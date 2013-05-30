class Problem2
  # Problem 2:
  # Find the sum of all Fibonacci numbers below 'max' for even, odd, or all
  # numbers.

  # fibonacci_sum
  #
  # Variables:
  # max: the maximum value of any given Fibonacci number
  # parity: what type of Fibonacci numbers to sum (:even, :odd, or :all;
  #     :all is default)
  #
  # Returns:
  # The sum of all Fibonacci numbers below 'max' that correspond to the
  # specified parity.
  # 
  def fibonacci_sum(max, parity = :all)
    sum = 0
    if parity == :even
      return fibonacci(max).inject { |sum, number| sum += number.even? ? number : 0 }
    elsif parity == :odd
      return fibonacci(max).inject { |sum, number| sum += number.odd? ? number : 0 }
    else
      return fibonacci(max).inject(0, :+)
    end
  end
   
  # fibonacci
  #
  # Variables
  # max: the maximum number to calculate
  # last_number: the previously calculated number
  # current_number: the current number of the fibonacci sequence
  # fibonacci_array: an array of calculated fibonacci numbers
  #
  # Returns:
  # An array of calculated fibonacci numbers
  #
  def fibonacci(max, last_number = 0, current_number = 1, fibonacci_array = [0])
    if current_number >= max
      return fibonacci_array
    else
      return fibonacci(max, current_number, last_number + current_number, fibonacci_array << current_number)
    end
  end

end
