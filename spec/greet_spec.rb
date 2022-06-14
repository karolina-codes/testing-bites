require 'greet'

RSpec.describe "greet method" do 
  it "returns a greeting with name" do
    result = greet("Bella")
    expect(result).to eq "Hello, Bella!"
  end
end


