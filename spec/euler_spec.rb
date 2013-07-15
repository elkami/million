require 'spec_helper'

describe Million::Euler do
  let(:irrational){ Million::Euler.new }

  it_should_behave_like "a raw class file", Million::Euler.file

  describe "value" do

    context "first digits valid" do
      it_should_behave_like "a valid irrational digit", /^7182818284/
    end

    context "last digits valid" do
      it_should_behave_like "a valid irrational digit", /7694228188$/
    end

    it_should_behave_like "a long value"
  end

  it_should_behave_like "a digit finder", "8405", 970718

end