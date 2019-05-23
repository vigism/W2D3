
require 'card.rb'

describe "Card" do
  describe "#initialize" do
    context "when invalid arguments are entered" do
      it "should raise error" do
        expect { Card.new(:lightning, 1) }.to raise_error(ArgumentError)
        expect { Card.new(:spade, 28) }.to raise_error(ArgumentError)
      end
    end
  end

  describe "#==" do
    
    context "when cards are checked for equality" do
      it "should return correct boolean value" do
        expect()
      end
    end
  end

end


### test cases

# should return correct boolean for comparison ( == )
# should return 1, 0, -1 according to comparison ( <=> )

