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