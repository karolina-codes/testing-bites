require 'present'

RSpec.describe Present do
  context "when contents have already been wrapped" do 
    it "fails" do 
      gift = Present.new
      gift.wrap("Phone")
      expect { gift.wrap("Laptop") }.to raise_error "A contents has already been wrapped."
    end
  end
  context "when no contents have been wrapped" do 
    it "fails" do 
      gift = Present.new
      expect { gift.unwrap() }.to raise_error "No contents have been wrapped."
    end
  end
end