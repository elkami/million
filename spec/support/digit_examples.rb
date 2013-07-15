shared_examples "a valid irrational digit" do |digits_to_match|
  it "#{digits_to_match} should match" do
    irrational.value.should match(digits_to_match)
  end
end

shared_examples "a long value" do
  it "should have 1 million " do
    irrational.value.size.should eq(1000000)
  end
end

shared_examples "a raw class file" do |file|
  it "should be alive and kicking" do
    file.should_not be_nil
  end
end

shared_examples "a digit finder" do |string,index|

  describe "find" do
    context "is success" do
      it "should return the index of value" do
        irrational.find(string).should eq(index)
      end
    end

    context "is fail" do
      it "sould be nil" do
        irrational.find("ABC").should be_nil
      end
    end
  end

end