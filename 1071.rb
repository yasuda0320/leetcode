require 'prime'

def divisors(n)
  return [] if n <= 0
  return [1] if n == 1
  
  n.prime_division.map.with_index {|(base, k), i|
    s = i.zero? ? 0 : 1
    (s..k).map {|n| base ** n}
  }.inject {|res, e|
    res + res.flat_map {|t| 
      e.map {|v| t * v}
    }
  }.sort.reverse
end

# @param {String} str1
# @param {String} str2
# @return {String}
def gcd_of_strings(str1, str2)
  len1 = str1.length
  len2 = str2.length
  div1 = divisors(len1)
  div2 = divisors(len2)
  com_div = div1.intersection(div2)
  
  com_div.each do |div|
    needle = str1[0, div]
    return needle if str1 == needle * (len1 / div) && str2 == needle * (len2 / div)
  end
  return ''
end

p gcd_of_strings('ABCABC', 'ABC')
p gcd_of_strings('AA', 'A')
