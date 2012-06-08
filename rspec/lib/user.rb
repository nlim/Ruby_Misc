class User
  attr_accessor :email, :password


  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}", v) unless v.nil?
    end
  end

  def to_s
    "User => {:email => #{email}, :password => #{password}}"
  end

end



u1 = User.new(:email => "cooldude@gmail.com", :password => "ssshhhh")
puts u1
