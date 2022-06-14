require 'string_builder'

RSpec.describe StringBuilder do
  it 'checks length of string' do
    string_builder = StringBuilder.new
    string_builder.add('Hi')
    result = string_builder.size()
    expect(result).to eq 2
  end
  it 'adds input string to @str' do
    string_builder = StringBuilder.new
    result = string_builder.add('lemon')
    expect(result).to eq 'lemon'
  end
  it 'outputs the built string' do
    string_builder = StringBuilder.new
    string_builder.add('bye')
    result = string_builder.output
    expect(result).to eq 'bye'
  end
end