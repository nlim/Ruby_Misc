r, w = IO.pipe
command = "ls -l"
# r, w is closed in the child process.
pid = spawn(command, :out=>w)
w.close
r.each_with_index do |line, index|
  puts index.to_s + ")  " + line
end
r.close

