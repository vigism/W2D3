class Array 

  def my_uniq
    arr = []
    self.each do |ele|
     arr << ele unless arr.include?(ele)
    end
    arr
  end

  def two_sum
    arr = []
    (0...length-1).each do |i|
      (i+1...length).each do |n|
        if self[i]+self[n] == 0
          arr << [i,n] 
        end
      end
    end
    arr
  end

end

def my_transpose(arr)
  transposed = []

  arr.each_with_index do |ele, i|
    row = []
    (0...arr.length).each do |j|
      row << arr[j][i]
    end
    transposed << row
  end

  transposed
end

def stock_picker(arr)
  highest_pair = []
  highest = 0
  
  (0...arr.length - 1).each do |i|
    (i+1...arr.length).each do |j|
      cur = arr[j] - arr[i]

      if cur > highest
        highest = cur
        highest_pair = [ i, j ]
      end
    end
  end

  highest_pair
end

# until won
# prompt source
# start = gets.chomp #1

# prompt for destination
# end= gets.chjomp # []


# until won?()
#   move(start,end)
#     var = start.shift # 1
#     if end.empty? || end[0] > start 
#       end.unshift(var)
#     end
#   end
# end
