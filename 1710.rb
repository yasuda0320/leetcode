# @param {Integer[][]} box_types
# @param {Integer} truck_size
# @return {Integer}
def maximum_units(box_types, truck_size)
  total = 0
  box_types.sort_by {|i| -i[1]}.each do |boxes, units|
    total += units * (boxes <= truck_size ? boxes : truck_size)
    break if (truck_size -= boxes) <= 0
  end
  total
end
