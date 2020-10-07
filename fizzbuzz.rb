def fizzbuzz(max)
  arr = []
  (1..max).each do |n|
    # If both rule 1 or rule 2 and rule 3 are checked at the same time - be changed to “lucky”;
    if (n % 3 == 0 || n.to_s.include?("3")) && (n % 5 == 0 || n.to_s.include?("5"))
      arr << "lucky"
    # If it is a multiple of 3 and 5 - changed to “fizzbuzz”;
    elsif (n % 3 == 0 && n % 5 == 0)
      arr << "fizzbuzz"
    elsif ((n % 3 == 0) && n.to_s.include?("3"))
      arr << "fizz fizz"
    # multiple of 3 occurs or contains 3 - replaced by the word “fizz”;
    elsif (n % 3 == 0 || n.to_s.include?("3"))
      arr << "fizz"
    elsif (n % 5 == 0 && n.to_s.include?("5"))
      arr << "buzz buzz"
    # multiple of 5, or it contains 5 - be changed to “buzz”;
    elsif (n % 5 == 0 || n.to_s.include?("5"))
      arr << "buzz"
    # Rules 1 and 2 are cumulative. Example: 3 should be changed to “fizz fizz”.
    else
      arr << n
    end
  end
  return arr
end

puts fizzbuzz(20)

# Example: Numbers from 1 to 20; Return:
# 1, 2, fizz fizz, 4, “buzz buzz”, “fizz”, 7,8, “fizz”, “buzz”, 11, “fizz”, “fizz”, 14, “lucky”, 16, 17,” fizz “, 19,” buzz ”
