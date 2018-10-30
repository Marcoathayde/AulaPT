# -- Yield --

# def my_method (num)

# 	puts "Olá"
# 	yield(10)
# 	yield(num)
# 	puts "Tchau"
# end

# my_method(333) {|n| puts n}

# square = Proc.new do |x|
# 	x = x*x
# end

# puts [1, 2, 3].collect!(&square)

# places = ["restaurante", "mercado", "praça", "shopping"]

# places.each do |place|
# 	puts "- #{place}"
# end

# -- Collect e Select

# numbers = [1, 2, 3, 4, 5]
# squared = numbers.collect do |x|
# 	x **2
# end

# puts squared
# puts numbers

# filtered = numbers.select do |x|
# 	x > 2
# end

# puts filtered

# -- Proc e Lambda

# def corrida_proc
# 	vencedor = Proc.new {return "Corredor 1 venceu."}
# 	vencedor.call
# 	"Corredor 2 venceu."
# end

# def corrida_lambda
# 	vencedor = lambda {return "Corredor 2 venceu."}
# 	vencedor.call
# 	"Corredor 2 venceu."
# end

# puts corrida_proc
# puts corrida_lambda

# -- Classes --

# class Person
# 	def initialize(nom, age)
# 		@name = nom
# 		@age = age
# 	end
# 	def name
# 		@name
# 	end
# 	def age
# 		@age
# 	end
# 	def name=(newname)
# 		@name = newname
# 	end
# 	def name(newname=@name)
# 		@name = newname
# 	end
# end

# person_1 = Person.new("Joao", 20)

# person_1.name = "Attt"
# puts person_1.name
# puts person_1.age
# person_1.name("BBBBBB")
# puts person_1.name

# class Creature
# 	def fight
# 		puts "Soco!"
# 	end
# end

# class Dragon < Creature
# 	def fight
# 		puts "AAAAAAAAAAAAAAAAAAAA"
# 		super() # Volta para o método parente
# 	end
# end

# drag = Dragon.new
# drag.fight

class Message
	@@messages_sent = 0 ## Compartilhada entre todos os objetos da classe, não é instanciado
	def initialize (from, to)
		@from = from
		@to = to
		@@messages_sent += 1
	end
	def display_messages
		@@messages_sent
	end
end

class Email < Message
	def initialize (from, to)
		super()
	end
end

message1 = Message.new("U1", "U2")
message2 = Message.new("U2", "U3")
message3 = Message.new("U2", "U1")


puts message1.display_messages