module UserExampleHelpers

  def create_valid_user
    User.new(:email => "nlim@fiksu.com", :password => "ssshhh")
  end

  def create_invalid_user
    User.new(:email => "invalid@bad.com")
  end
end


describe User do
  it "should create a valid user"

  it "should raise an exception on invalid user creation"

end
