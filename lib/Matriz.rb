class Matriz
	
	attr_reader(:alt, :anc)
	
	private_class_method :new

	def initialize(alt, anc, op)
		@alt = (alt-1)
		@anc = (anc-1)
		@M = Array.new(@alt)
		for i in (0..@alt)
			@M[i]=Array.new(@anc)
		end

		if op==1
			for i in (0..@alt)
				for j in (0..@anc)
					if(i == j)
						@M[i][j]=1
					else
						@M[i][j]=0
					end
				end
			end
		end
		
		if op==2
			for i in (0..@alt)
				for j in (0..@anc)
					@M[i][j]=rand(10)
				end
			end
		end
	end

	def [](i)
		@M[i]
	end

	def []=(i,other)
		@M[i]=other
	end

	def Matriz.identidad(alt, anc)
		new(alt, anc, 1)
	end

	def Matriz.random(alt, anc)
		new(alt, anc, 2)
	end

	def to_s
		aux = "["
		for i in(0..@alt)
			aux += "["
			for j in(0..@anc)
				if (j!=@anc)
					aux += "#{@M[i][j]},"
				else
					aux += "#{@M[i][j]}"
				end
			end
			aux += "]"
		end
		aux += "]"
		aux
	end
	
	def +(other)
		if(@alt==@anc)
			suma=Matriz.random(@alt+1,@anc+1)
			for i in (0..@alt)
				for j in (0..@anc)
					suma[i][j]=@M[i][j]+other[i][j]
				end
			end
			suma
		else
			puts"No se puede sumar, ya que la matriz no es cuadrada"
		end
	end

	def -(other)
		if(@alt==@anc)
			resta=Matriz.random(@alt+1,@anc+1)
			for i in (0..@alt)
				for j in (0..@anc)
					resta[i][j]=@M[i][j]-other[i][j]
				end
			end
			resta
		else
			puts"No se puede restar, ya que la matriz no es cuadrada"
		end
	end


end


puts m=Matriz.random(3,3)
puts n=Matriz.random(3,3)
puts m.+(n)
puts m.-(n)
