class Shape
  attr_reader :color, :x, :y

  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}", v) unless v.nil?
    end
  end

end

class Circle < Shape
  def round?
    true
  end
end

