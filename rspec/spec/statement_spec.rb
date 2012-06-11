require 'statement'

describe "Statement" do
  it "Uses the customer's name in the header" do
    customer = double('customer')
    customer.stub(:name).and_return("Nathaniel")
    statement = Statement.new(customer)
    statement.generate.should =~ /^Statement for Nathaniel/
  end

  it "Uses the customer's name in the header, with mock expectation" do
    customer = double('customer')
    customer.should_receive(:name).and_return('Tina')
    statement = Statement.new(customer)
    statement.generate.should =~ /^Statement for Tina/
  end

  it "logs a statement one generate()" do
    customer = stub('customer')
    customer.stub(:name).and_return("Nathaniel")
    logger = mock('logger')
    statement = Statement.new(customer, logger)
    
    logger.should_receive(:log).with(/Statement for Nathaniel/)
    statement.generate
  end
    


end
