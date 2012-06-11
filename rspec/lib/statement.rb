class Statement

  attr_reader :customer, :logger
  
  def initialize(customer, logger=nil)
    @customer = customer
    @logger = logger
  end

  def generate
    response = "Statement for #{customer.name}"
    logger.log(response) if logger
    response
  end

end
