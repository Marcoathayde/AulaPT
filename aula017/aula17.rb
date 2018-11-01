class Refeicao
	@@vend = 0
	def initialize(nome, tipo, desc, preco, disp)
		@nome = nome
		@tipo = tipo
		@desc = desc
		@preco = preco
		@disp = disp
		@@vend += 1
	end

	def nome
		puts @nome
	end
	def nome=(newname)
		@nome = newname
		puts @nome
	end

	def tipo
		puts @tipo
	end
	def tipo=(newname)
		@tipo = newname
		puts @tipo
	end

	def desc
		puts @desc
	end
	def desc=(newname)
		@desc = newname
		puts @desc
	end

	def preco
		dec = (@preco - @preco.floor) * 100
		puts "R$" + @preco.floor.to_s + "," + dec.round.to_s
	end
	def preco=(newprice)
		@preco = newprice
	end

	def disp
		if @disp
			puts "Disponível."
		else
			puts "Indisponível."
		end
	end
	def disp=(newbool)
		@disp = newbool
	end

	def vendas
		puts @preco * @vend
	end
end

class Cart
	@content = []
	@price = 0
	@items = 0

	def add (item)
		@content << item
	end

end


mac = Refeicao.new("Macarrão", :Massa, "Macarrãozin.", 15, false)


mac.preco


carrinho << mac

def content(carr)
	carr.each do |item|
	


	end
end

