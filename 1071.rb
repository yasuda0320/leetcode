require 'prime'

def divisors(n)
  return [] if n <= 0
  return [1] if n == 1
  
  n.prime_division.map.with_index { |(base, k), i|
    s = i.zero? ? 0 : 1
    (s..k).map { |n| base ** n }
  }.inject { |res, e|
    res + res.flat_map { |t| 
      e.map { |v| t * v }
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
