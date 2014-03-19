require "account_validator"

require "bank_parser"

describe AccountValidator do

  it "validates that an account number has a valid checksum" do

    graphic = <<YEEHAW
    _  _     _  _  _  _  _
  | _| _||_||_ |_   ||_||_|
  ||_  _|  | _||_|  ||_| _|
YEEHAW

    number = BankParser.new.parse(graphic)

    actual = true

    expected = AccountValidator.new.valid?(number)

    expect(actual).to eq expected
  end

end