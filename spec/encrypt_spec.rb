require_relative '../encrypt'
# RSPEC Tests
# 1. describe -> method we're using
# 2. it -> describing the test in plain english
# 3. expect -> call the method and compare

describe '#encrypt' do
  it 'should return an empty string when given one' do
    expect(encrypt('')).to eq('')
  end

  it 'should return B if given E' do
    expect(encrypt('E')).to eq('B')
  end

  it 'should return an encrypted sentence' do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    expect(actual).to eq(expected)
  end

  it 'should return an encrypted sentence with punctuation' do
    actual = encrypt("THE QUICK, BROWN FOX JUMPS OVER THE LAZY DOG!")
    expected = "QEB NRFZH, YOLTK CLU GRJMP LSBO QEB IXWV ALD!"
    expect(actual).to eq(expected)
  end
end
