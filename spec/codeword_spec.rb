require 'check_codeword'

RSpec.describe 'codeword conditional' do
  context "when 'horse' is passed" do 
    it 'lets user in' do
      codeword = check_codeword('horse')
      expect(codeword).to eq 'Correct! Come in.'
    end
  end
  context 'when first and last is correct' do
    it 'lets user knows they are close' do
      codeword = check_codeword('hoarse')
      expect(codeword).to eq 'Close, but nope.'
    end
  end
  context 'any other input' do
    it 'shouts at user' do
      codeword = check_codeword('password')
      expect(codeword).to eq 'WRONG!'
    end
  end
end