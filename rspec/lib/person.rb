class Person
  attr_reader :first_name, :last_name, :age

  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}", v) unless v.nil?
    end
  end


  def eligible_to_vote?
    age >= 18
  end

  def to_s
    "Person: #{first_name} #{last_name} is #{age} years old"
  end
end


