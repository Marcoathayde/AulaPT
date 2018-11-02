class Refeicao
	def initialize(nome, tipo, desc, preco, disp)
		@nome = nome
		@tipo = tipo
		@desc = desc
		@preco = preco
		@disp = disp
		@vend = 0
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
		puts "R$" + @preco.floor.to_s + "," + "%02d" % [dec]
	end
	def preco=(newprice)
		@preco = newprice
	end
	def precoRaw
		@preco
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
	def initialize
		@content = Array.new
		@price = 0
		@items = 0
	end

	def add(item)
		@content << item
		@price += item.precoRaw
		@items += 1
	end

	def show
		@content.sort!

		@content.each do |item|
			if 
			item.nome
			item.preco
			item.disp
		end
	end

end


mac = Refeicao.new("Macarrão", :Massa, "Macarrãozin.", 15, false)


carrinho = Cart.new

carrinho.add(mac)
carrinho.add(mac)
carrinho.add(mac)
carrinho.add(mac)


carrinho.show