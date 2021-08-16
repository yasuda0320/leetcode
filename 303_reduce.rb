class NumArray

=begin
  :type nums: Integer[]
=end
  def initialize(nums)
    @sums = [0]
    nums.reduce(0) do |sum, num|
      @sums << sum + num
      @sums.last
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
