require_relative 'book'


describe Book do
	before :each do
	 	@book = Book.new "Title", "Author", :category
	end
	
	describe "#title" do
		it "returns the correct title" do
			@book.title.should eql "Title"
		end
	end
	describe "#author" do
		it "returns the correct author" do
			@book.author.should eql "Author"
		end
	end
	describe "#category" do
		it "returns the correct category" do
			@book.category.should eql :category
		end
	end
	
end