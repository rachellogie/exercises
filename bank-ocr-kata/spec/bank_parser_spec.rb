require 'bank_parser'

describe BankParser do
  it "returns 123456789 for scanner output" do
    parser = BankParser.new

    graphic = <<YEEHAW
    _  _     _  _  _  _  _
  | _| _||_||_ |_   ||_||_|
  ||_  _|  | _||_|  ||_| _|
YEEHAW

    actual = 123456789

    expected = parser.parse(graphic)

    expect(actual).to eq expected
  end
end