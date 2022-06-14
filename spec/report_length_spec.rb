require 'report_length'

RSpec.describe "report_length method" do
  it "returns string with the length of input string interpolated" do
    str = report_length("Hello")
    expect(str).to eq "This string was 5 characters long."
  end 
end