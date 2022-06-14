require 'password_checker'

RSpec.describe PasswordChecker do
  context "When password < 8 i will get an error" do
    it "fails" do
      password = PasswordChecker.new
      expect { password.check("hi") }.to raise_error "Invalid password, must be 8+ characters."
    end
  end
  context "When password >= 8" do
    it "return true" do
      password = PasswordChecker.new
      result = password.check("hippopotamus")
      expect(result).to eq true
    end
  end
end