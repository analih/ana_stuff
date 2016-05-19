def lo_que_sea(*args)
	arg1, arg2 = args 
	puts "arg1: #{arg1}, arg2: #{arg2} "
end
def lo_que_sea_(arg1, arg2)
	puts "arg1: #{arg1}, arg2: #{arg2} "
end
def lo_que_seas(arg1)
	puts "arg1: #{arg1}"
end
def ninguno()
	puts "nada"
end 

lo_que_sea("Ana", "Lidia")
lo_que_sea_("Ana", "Lidia")
lo_que_seas("Ana")
ninguno()