require 'spec_helper'

describe Million::Pi do
  let(:irrational){ Million::Pi.new }

  it_should_behave_like "a raw class file", Million::Pi.file

  describe "value" do

    context "first digits valid" do
      it_should_behave_like "a valid irrational digit", /^1415926535/
    end

    context "last digits valid" do
      it_should_behave_like "a valid irrational digit", /5779458151$/
    end

    it_should_behave_like "a long value"
  end

  it_should_behave_like "a digit finder", "8405", 996613

end