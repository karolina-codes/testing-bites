require 'gratitudes'

RSpec.describe Gratitudes do 
  it "adds gratitudes to an array" do
    list = Gratitudes.new
    result = list.add("Air")
    expect(result).to eq ["Air"]
  end
end