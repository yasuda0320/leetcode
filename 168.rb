# @param {Integer} column_number
# @return {String}
def convert_to_title(column_number)
  sheet = ''
  loop do
    column_number, r = column_number.divmod(26)
    if r == 0
      sheet += 'Z'
      column_number -= 1
    else
      sheet += (64 + r).chr
    end
    break if column_number == 0
  end
  sheet.reverse
end
