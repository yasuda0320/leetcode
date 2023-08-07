require 'prime'

def divisors(num)
  return [] if num <= 0
  return [1] if num == 1
  
  ([[1]] + num.prime_division.map { |base, k|
    (1..k).map { |n| base ** n }
  }).inject { |result, item|
    result + result.flat_map { |t| 
      item.map { |v| t * v }
    }
  }
end

# @param {String} str1
# @param {String} str2
# @return {String}
def gcd_of_strings(str1, str2)
  length1 = str1.length
  length2 = str2.length
  common_divisors = divisors(length1).intersection(divisors(length2))
  
  common_divisors.sort.reverse.each do |divisor|
    string_divisor = str1[0, divisor]
    return string_divisor if str1 == string_divisor * (length1 / divisor) && str2 == string_divisor * (length2 / divisor)
  end
  ''
end

p gcd_of_strings('ABCABC', 'ABC')
p gcd_of_strings('ABABAB', 'ABAB')
p gcd_of_strings('LEET', 'CODE')
p gcd_of_strings('AA', 'A')
