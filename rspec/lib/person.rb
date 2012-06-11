class Person
  attr_reader :first_name, :last_name, :birth_date

  def initialize(args)
    arg.each do |k, v|
      instance_variable_set("@{k}", v) unless v.nil?
    end
  end

  def to_s
    "Person: #{first_name} #{last_name} born on #{birth_date}"
  end
end

puts Person.new(:first_name => "Bob", :last_name => "Smith", :birth_date => 19.years.ago)
