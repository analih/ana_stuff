puts "enter a filename"
filename = gets.chomp  

txt = open(filename) #argument

puts "Here's your file #{filename}: " #only the name of the file 
print txt.read #prints the text of the file  

print "Type the file again: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read

txt.close()
txt_again.close()

puts "enter a filename "
filename = gets.chomp

file = open(filename)
puts "here is your file #{filename}: "
print file.read
