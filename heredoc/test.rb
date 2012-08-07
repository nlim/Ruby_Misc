object = "Person"

sql = <<SQL
  hello #{object}!
SQL

puts sql
