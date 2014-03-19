require 'bank_parser'

describe BankParser do
  it "returns 123456789 for scanner output" do
    parser = BankParser.new
    graphic = ["    _  _     _  _  _  _  _ ", "  | _| _||_||_ |_   ||_||_|", "  ||_  _|  | _||_|  ||_| _|"]

    actual = 123456789

    expected = parser.parse(graphic)


    expect(actual).to eq expected
  end
end