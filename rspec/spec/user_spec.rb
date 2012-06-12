require 'user'

module UserExampleHelpers

  def create_valid_user
    User.new(:email => "nlim@fiksu.com", :password => "ssshhh")
  end

  def create_invalid_user
    User.new(:email => "invalid@bad.com")
  end
end


describe User do
  include UserExampleHelpers

  it "should create a valid user" do
    expect{ create_valid_user }.should_not raise_error(UserInvalidException)
  end

  it "should raise an exception on invalid user creation" do
    expect{ create_invalid_user }.should raise_error(UserInvalidException)
  end

end
