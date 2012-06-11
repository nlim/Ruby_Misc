describe Person do
  subject {Person.new :first_name => "Bob", :last_name => "Smith", :birth_date => 19.years.ago}
  specify {subject.should be_eligable_to_vote}

end
