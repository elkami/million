require 'spec_helper'

describe Million::Phi do
  let(:irrational){ Million::Phi.new }

  it_should_behave_like "a raw class file", Million::Phi.file

  describe "value" do
    context "first digits valid" do
      it_should_behave_like "a valid irrational digit", /^618033988749/
    end

    context "last digits valid" do
      it_should_behave_like "a valid irrational digit", /874153226344$/
    end

    it_should_behave_like "a long value"
  end

  it_should_behave_like "a digit finder", "8405", 999574

end