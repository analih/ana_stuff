class Cancion

	def initialize(letras)
		@letras = letras
	end

	def canta_una_cancion()
		@letras.each { |line| puts line }
	end
end

mananitas = Cancion.new(["Estas son las mananitas que",
	"cantaba el rey David"])

feliz_cumpleanios = Cancion.new(["Feliz cumpleanios a ti",
	"Feliz cumpeanios te deseamos a ti"])

porra = Cancion.new(["A la bio a la bao",
	"a la bim bom ba"])

porra.canta_una_cancion()

mananitas.canta_una_cancion()

feliz_cumpleanios.canta_una_cancion()