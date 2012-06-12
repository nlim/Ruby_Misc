require 'shape'

shared_examples_for "a shape" do
  
  before(:all) do
    @shape = Shape.new(:color => "Green", :x => 3, :y => 4)
  end

  it "should have a color" do
    @shape.color.should_not be_nil
  end
  
  it "should have a center point" do
    @shape.x and @shape.y
  end
end

describe "a circle" do
  before(:all) do
    @shape = Circle.new(:color => "Blue", :x => 0, :y => 0)
  end

  it_should_behave_like "a shape"

  it "should be round" do
    @shape.should be_round
  end

end
