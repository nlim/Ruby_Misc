class User
  attr_accessor :email, :password


  def initialize(args)
    raise UserInvalidException unless args[:email] and args[:password]
    args.each do |k, v|
      instance_variable_set("@#{k}", v) unless v.nil?
    end
  end

  
  def to_s
    "User => {:email => #{email}, :password => #{password}}"
  end

end

class UserInvalidException < Exception; end

