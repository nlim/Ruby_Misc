require 'bowling'

describe Bowling, "#score" do
	 it "return 0 for all gutter games" do
	    bowling = Bowling.new
	    20.times { bowling.hit(0) }
	    bowling.score.should eq(0)
	 end
end   