input_file = ARGV.first #file from the user 

def print_all(f) #prints the file
	puts f.read #reads the file
end

def rewind(f) #prints the file 
	f.seek(0)
end

def print_a_line(line_count, f)
	puts "#{line_count}, #{f.gets.chomp} "
end

current_file = open(input_file)

puts "First let's print the whole file:\n"

print_all(current_file)

puts "Now let's rewind, kind of like a tape. "

rewind(current_file)

puts "Let's print three lines: "

current_line = 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file) 