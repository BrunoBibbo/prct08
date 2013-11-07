require "Matriz.rb"

describe Matriz do

	before :each do
	@m1 = Matriz.random(3,3)
	@m2 = Matriz.identidad(3,3)
	@m6 = Matriz.identidad(3,3)
	end

	describe "Comprobacion de matrices" do
		it "Comprobando matriz identidad" do
		@m2.to_s
		@m2.to_s.should eq("[[1,0,0][0,1,0][0,0,1]]")
		end
	end


	describe "Comprobacion de las operaciones" do        

		it "La suma" do
			@m3 = @m1 + @m2
			for i in 0...2
				for j in 0...2
				@m3[i][j].is_a? Integer
				end
			end        
		end

		it "Suma identidad" do
			@m5=@m2 + @m6
			@m5.to_s.should eq("[[2,0,0][0,2,0][0,0,2]]")
		end

        	it "La resta" do
			@m4 = @m1 - @m2
 			for i in 0...2
				for j in 0...2
				@m4[i][j].is_a? Integer
				end
			end        
		end

		it "Resta identidad" do
			@m5=@m2 - @m6
			@m5.to_s.should eq("[[0,0,0][0,0,0][0,0,0]]")
		end

	end
end


