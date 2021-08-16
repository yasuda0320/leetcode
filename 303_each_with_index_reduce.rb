class NumArray

=begin
  :type nums: Integer[]
=end
  def initialize(nums)
    @sums = Array.new(nums.size + 1, 0)
    nums.each_with_index.reduce(0) do |sum, (num, index)|
      @sums[index + 1] = sum + num
    end
  end


=begin
    :type left: Integer
    :type right: Integer
    :rtype: Integer
=end
  def sum_range(left, right)
    @sums[right + 1] - @sums[left]
  end


end

# Your NumArray object will be instantiated and called as such:
# obj = NumArray.new(nums)
# param_1 = obj.sum_range(left, right)
