require 'person'

describe Person do
  subject {Person.new :first_name => "Bob", :last_name => "Smith", :age => 19}
  specify {subject.should be_eligible_to_vote}

end
