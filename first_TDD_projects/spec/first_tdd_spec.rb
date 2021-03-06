
require 'first_tdd.rb'

describe Array do

  describe "#my_uniq" do 
    context "when array is empty" do 
      it "should return empty array" do 
        expect([].my_uniq).to eq([])
      end
    end

    context "when all elements are the same" do 
      it "should return only 1 element" do
        expect([1,1,1,1,1].my_uniq).to eq([1])
      end
    end

    context "when all elements are unique" do 
      it "should return all elements" do 
        expect([1,2,3,4,5].my_uniq).to eq([1,2,3,4,5])
      end
    end

    context "when there are duplicates" do 
      it "should return only unique elements" do 
        expect([1,2,1,4,4].my_uniq).to eq([1,2,4])
      end
    end
  end 

  
  describe "#two_sum" do
    context "when pairs have same value" do
      it "should not return indicies of repeated values" do
        expect([0,1,-1].two_sum).to_not include([0,0])
      end
    end
    
    it "should return pairs in ascending order" do
      expect([1, 1, -1, -3, 4].two_sum).to eq([[0, 2],[1,2]])
    end



    context "when pairs have same first index" do
      it "should return pairs in ascending order by second index" do
        expect([1,3,-1,4,-1].two_sum).to eq([[0,2], [0,4]])
      end
    end

    context "when no pairs sum to zero" do 
      it "should return empty array when no pairs found" do
        expect([1,2,3,4,5].two_sum).to eq([])
      end
    end

    context "when input array is empty" do 
      it "should return empty array" do 
        expect([].two_sum).to eq([])
      end
    end
  end
end

describe "#my_transpose" do
  context "when input array is empty" do 
    it "should return empty array" do
      expect(my_transpose([])).to eq([])
    end
  end

  it "should return transposed matrix" do 
    expect(my_transpose([
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
    ])).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
  end
end

describe "#stock_picker" do
  context "when there is no profit to be made" do
    it "should return an empty array" do
      expect(stock_picker([10,9,8,7,6,5])).to eq([])
    end
  end

  context "when input array is empty" do 
    it "should return empty array" do
      expect(stock_picker([])).to eq([])
    end
  end

  context "when price goes up and down" do
    it "should return highest profit pair" do
      expect(stock_picker([1, 10, 12, 9, 13, 4, 25])).to eq([0,6])
    end
  end
end

describe TowersOfHanoi do 
  let(:pile1) {[2,3]}
  let(:pile2) {[1]}
  let(:pile3) {[]}
  describe "#move" do 
    context "when user enters input" do 
      it "should not pick from empty pile" do
        expect(move(3,2)).to eq(nil)
      end

      it "should not try to move into the same pile" do
        expect(move(2,2)).to eq(nil)
      end

      it "should not try to move bigger ring onto smaller ring" do 
        expect(move(1,2)).to eq(nil)
      end

      it "should be in range" do
        expect(move(1,23)).to eq(nil)
      end

      it "is legal move" do
        move(1,3)
        expect(pile3).to eq([2])
      end
    end
  end

end


# start cannot be empty
# end position cannot be same as start position
# start ring has to be less than the first element of end
#index in range

