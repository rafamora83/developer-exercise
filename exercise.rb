class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    result = str.scan(/\w+|[^\s\w]/).map do |s|
      if s.length > 4
        s[0].match?(/[A-Z]/) ? 'Marklar' : 'marklar'
      else
        s
      end
    end
    result.join(" ").gsub(/\s(?=[[:punct:]])/, "")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    sum = 0
    a, b = 0, 1
    nth.times do |i|
      a, b = b, a + b 
      sum += a if a.even?
    end
    sum
  end

end
