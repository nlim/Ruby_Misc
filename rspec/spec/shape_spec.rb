share_examples_for "a shape" do
  it "should have a color"
  it "should have a center point"
end

describe "a circle" do
  it_should_behave_like "a shape"

  it "should be round"

end
