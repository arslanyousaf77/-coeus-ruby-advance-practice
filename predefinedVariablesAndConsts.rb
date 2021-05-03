p $i

#input record separator
$/ = ","
c = gets
puts c

#name of the current Ruby program being executed.
puts $0

#The process pid of the current Ruby program being executed.
puts $$

#The exit status of the last process terminated.
puts $?

#Synonym for $LOAD_PATH.
puts $:

#destination output for print and printf ($stdout by default).
puts $defout

#The name of the file currently being read from ARGF. Equivalent to ARGF.filename.
puts $FILENAME

#An array holding the directories to be searched when loading files with the load and require methods.
puts $LOAD_PATH

#The security level
puts $SAFE

puts $stdin
puts $stdout

#Last input string
puts $_


#Contsants
puts RUBY_PLATFORM
puts RUBY_RELEASE_DATE
puts RUBY_VERSION
